import 'package:client/core/di/dependency_provider.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/component/avatar/avatar.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: PrimaryColor.dark,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: PrimaryColor.dark,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ListTile(
                        leading: Avatar(
                          photoUrl: state.user.photoUrl,
                          borderColor: Colors.red,
                          radius: 40,
                        ),
                        title: Text(
                          state.user.name.toString(),
                          style: context.textStyle.h4,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: TextColor.black,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.contrast,
                                      color: PrimaryColor.blueAccent,
                                    ),
                                    SizedBox(width: context.spacerStyle.width),
                                    Text(
                                      'Dark Mode',
                                      style: context.textStyle.h4.copyWith(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                CinemaxSwitch(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Divider(
                                color: PrimaryColor.dark,
                                thickness: 2,
                              ),
                            )
                          ],
                        ),
                        CinemaxOutlinedButton(
                          textColor: SecondaryColor.red,
                          color: SecondaryColor.red,
                          label: 'Logout',
                          onPressed: () {
                            DependencyProvider.get<AuthBloc>()
                                .add(AuthLogoutRequested());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
