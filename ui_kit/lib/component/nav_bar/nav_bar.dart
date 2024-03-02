import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_kit/component/nav_bar/bar_item_model.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    this.onTabChange,
  });

  final List<NavBarItem> tabs;
  final int selectedIndex;
  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    final style = context.navBarStyle;
    return GNav(
      onTabChange: onTabChange,
      selectedIndex: selectedIndex,
      gap: 2,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      tabMargin: style.tabMargin,
      padding: style.padding,
      textStyle: style.textStyle,
      tabs: List.generate(
          tabs.length,
          (index) => GButton(
                iconColor: style.iconColor,
                backgroundColor: PrimaryColor.soft,
                iconActiveColor: style.iconActiveColor,
                text: tabs[index].label,
                icon: tabs[index].icon,
              )),
    );
  }
}
