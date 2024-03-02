import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class CinemaxPinput extends StatelessWidget {
  const CinemaxPinput({
    super.key,
    this.onCompleted,
    this.errorText,
    this.forceErrorState = false,
    this.onChanged,
  });

  final void Function(String)? onCompleted;
  final String? errorText;
  final void Function(String)? onChanged;
  final bool forceErrorState;

  @override
  Widget build(BuildContext context) {
    final style = context.pinputStyle;
    return Pinput(
      onChanged: onChanged,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onCompleted: onCompleted,
      crossAxisAlignment: CrossAxisAlignment.center,
      errorText: errorText,
      forceErrorState: forceErrorState,
      errorTextStyle: style.errorTextStyle,
      submittedPinTheme: style.submittedPinTheme,
      focusedPinTheme: style.focusedPinTheme,
      defaultPinTheme: style.defaultPinTheme,
      errorPinTheme: style.errorPinTheme,
    );
  }
}
