import 'package:flutter/material.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/app_bar/cinemax_app_bar.dart';
import 'package:ui_kit/component/buttons/cinemax_filled_button.dart';
import 'package:ui_kit/component/buttons/cinemax_text_button.dart';
import 'package:ui_kit/component/buttons/cinemax_outlined_button.dart';
import 'package:ui_kit/component/check_box/check_box.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';
import 'package:ui_kit/component/input_field/input_field.dart';
import 'package:ui_kit/component/switch/cinemax_switch.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class ComponentPage extends StatelessWidget {
  const ComponentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CinemaxAppBar(
        titleText: 'Component Page',
        action: CinemaxIcon(icon: CinemaxIcons.search),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const InputField(
                labelText: 'Full Name',
                prefixIcon: CinemaxIcons.eyeOff,
                suffixIcon: CinemaxIcons.search,
              ),
              const CinemaxFilledButton(
                label: 'Tab Bar',
              ),
              CinemaxTextButton(
                label: 'Text Button',
                onPressed: () {},
              ),
              CinemaxOutlinedButton(
                label: 'Outline Button',
                onPressed: () {},
              ),
              Row(
                children: [
                  const CinemaxCheckBox(value: false, onChanged: null),
                  SizedBox(height: context.spacerStyle.height),
                  const CinemaxCheckBox(
                    boxShape: BoxShape.rectangle,
                    value: false,
                    onChanged: null,
                  ),
                ],
              ),
              Row(
                children: [
                  CinemaxSwitch(
                    value: false,
                    onChanged: (p0) {},
                  ),
                  SizedBox(height: context.spacerStyle.height),
                  CinemaxSwitch(
                    value: true,
                    onChanged: (p0) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
