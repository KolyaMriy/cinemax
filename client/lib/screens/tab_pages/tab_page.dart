import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/component/nav_bar/bar_item_model.dart';
import 'package:ui_kit/component/nav_bar/nav_bar.dart';

class TabPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const TabPage(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: constraints.maxWidth <= 640
            ? NavBar(
                onTabChange: (index) => _onTap(context, index),
                selectedIndex: navigationShell.currentIndex,
                tabs: [
                  NavBarItem(
                    label: 'Home',
                    icon: CinemaxIcons.home,
                  ),
                  NavBarItem(
                    label: 'Search',
                    icon: CinemaxIcons.search,
                  ),
                  NavBarItem(
                    label: 'Favorite',
                    icon: CinemaxIcons.heart,
                  ),
                  NavBarItem(
                    label: 'Profile',
                    icon: CinemaxIcons.profile,
                  ),
                ],
              )
            : null,
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
