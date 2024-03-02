import 'package:client/core/di/dependency_provider.dart';
import 'package:client/core/router/app_router_name.dart';
import 'package:client/features/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/component/component.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.textStyle;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'ProfileScreen',
              style: style.h1,
            ),
            Text(
              DependencyProvider.get<AuthBloc>().state.user.email.toString(),
              style: style.h1,
            ),
            CinemaxFilledButton(
              label: 'logout',
              onPressed: () {
                DependencyProvider.get<AuthBloc>().add(AuthLogoutRequested());
                context.goNamed(AppRouterName.welcomeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
