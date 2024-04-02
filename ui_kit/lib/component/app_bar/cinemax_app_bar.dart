import 'package:flutter/material.dart';
import 'package:ui_kit/component/app_bar/title_app_bar.dart';
import 'package:ui_kit/component/icon/cinemax_icon.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class CinemaxAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CinemaxAppBar({
    Key? key,
    this.actionIcon,
    this.leadingIcon,
    this.titleText,
    this.subTitle,
    this.leading,
    this.action,
    this.title,
    this.textAlign = TextAlign.start,
    this.backgroundColor,
    this.centerTitle = false,
  }) : super(key: key);

  final CinemaxIcon? actionIcon;
  final CinemaxIcon? leadingIcon;
  final String? titleText;
  final String? subTitle;
  final Widget? leading;
  final Widget? action;
  final Widget? title;
  final TextAlign textAlign;
  final Color? backgroundColor;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final style = context.appBarStyle;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: AppBar(
        centerTitle: centerTitle,
        backgroundColor: backgroundColor ?? style.backgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: TitleAppBar(
          textAlign: textAlign,
          title: title,
          titleText: titleText,
          subTitle: subTitle,
        ),
        leadingWidth: 40,
        toolbarHeight: 40,
        leading: leadingIcon != null ? leadingIcon! : leading,
        actions: _buildActions(),
        automaticallyImplyLeading: false,
      ),
    );
  }

  List<Widget>? _buildActions() {
    if (actionIcon != null) {
      return [actionIcon!];
    } else if (action != null) {
      return [action!];
    } else {
      return null;
    }
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
