import 'package:flutter/material.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class CinemaxTextButton extends StatefulWidget {
  const CinemaxTextButton({
    super.key,
    required this.label,
    this.onPressed,
    this.fontSize,
  });

  final String label;
  final VoidCallback? onPressed;
  final double? fontSize;

  @override
  State<CinemaxTextButton> createState() => _CinemaxTextButtonState();
}

class _CinemaxTextButtonState extends State<CinemaxTextButton>
    with TickerProviderStateMixin {
  late final AnimationController _buttonAnimationController;
  late final Animation<double> _buttonOpacityAnimation;
  final Duration _fadeOutDuration = const Duration(milliseconds: 200);
  final Duration _fadeInDuration = const Duration(milliseconds: 250);

  bool _needOnPressed = false;

  @override
  void initState() {
    _buttonAnimationController = AnimationController(
      vsync: this,
    )..addListener(() {
        if (_needOnPressed && _buttonAnimationController.value >= 0.5) {
          widget.onPressed!();
          _needOnPressed = false;
        }
      });

    _buttonOpacityAnimation = Tween<double>(
      begin: 1,
      end: 0.4,
    ).animate(
      CurvedAnimation(
        parent: _buttonAnimationController,
        curve: Curves.decelerate,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _buttonAnimationController.dispose();
    super.dispose();
  }

  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animateButton();
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _needOnPressed = true;
      _animateButton();
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animateButton();
    }
  }

  void _animateButton() {
    if (_buttonAnimationController.isAnimating) {
      return;
    }
    final wasHeldDown = _buttonHeldDown;
    (_buttonHeldDown
            ? _buttonAnimationController.animateTo(
                1,
                duration: _fadeOutDuration,
                curve: Curves.easeInOutCubicEmphasized,
              )
            : _buttonAnimationController.animateTo(
                0.0,
                duration: _fadeInDuration,
                curve: Curves.easeOutCubic,
              ))
        .then<void>((value) {
      if (mounted && wasHeldDown != _buttonHeldDown) {
        _animateButton();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final style = context.textButtonStyle;
    final enabled = widget.onPressed != null;
    return FadeTransition(
      opacity: _buttonOpacityAnimation,
      child: GestureDetector(
        onTapDown: enabled ? _handleTapDown : null,
        onTapUp: enabled ? _handleTapUp : null,
        onTapCancel: enabled ? _handleTapCancel : null,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: style.contentPadding,
            child: Text(
              widget.label,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: enabled
                  ? style.textStyle.copyWith(fontSize: widget.fontSize)
                  : style.textStyle.copyWith(color: style.disabledTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
