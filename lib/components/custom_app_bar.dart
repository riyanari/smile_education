import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // Size get preferredSize => AppBar().preferredSize;
  final Size preferredSize;
  final String title;
  final List<Widget>? action;
  final PreferredSize? tabBar;
  final Color? colors;

  CustomAppBar(
      this.title, {
        Key? key,
        this.action,
        this.tabBar, this.colors,
      })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          margin: const EdgeInsets.fromLTRB(18, 18, 14, 14),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Image.asset(
            "assets/ic_back.png",
          ),
        ),
      ),
      title: Align(
        alignment: action == null ? Alignment.centerRight : Alignment.center,
        child: Text(
          title,
          style: primaryTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      titleSpacing: 18,
      backgroundColor: kBackgroundColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: kPrimaryColor),
      automaticallyImplyLeading: false,
      actions: action,
      bottom: tabBar,
    );
  }
}


