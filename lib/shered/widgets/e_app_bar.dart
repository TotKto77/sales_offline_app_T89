import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/theme/text_s.dart';

class EAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EAppBar({super.key, required this.title, required this.asset});

  final String title;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyles.mainTitle,
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          asset,
          color: AppColors.primaryColor,
        ),
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
