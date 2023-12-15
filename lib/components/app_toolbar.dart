/*
* @author : Mingaleev D
* @data : 15.12.2023
*/

import 'package:flutter/material.dart';
import 'package:new_flutter_t/style/app_text.dart';

import '../style/app_colors.dart';

class AppToolbar extends StatelessWidget implements PreferredSizeWidget {
  const AppToolbar({super.key, required this.title, required this.actions});

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      title: Text(
        title,
        style: AppText.header2,
      ),
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
