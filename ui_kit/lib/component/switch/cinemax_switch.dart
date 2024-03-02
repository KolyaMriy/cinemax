import 'package:flutter/cupertino.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class CinemaxSwitch extends StatelessWidget {
  const CinemaxSwitch({
    super.key,
    required this.value,
    this.onChanged,
  });

  final bool value;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool value)? onChanged;

  @override
  Widget build(BuildContext context) {
    final style = context.switchStyle;
    return CupertinoSwitch(
      thumbColor: style.thumbColor,
      activeColor: style.activeColor,
      trackColor: style.trackColor,
      value: value,
      onChanged: onChanged,
    );
  }
}
