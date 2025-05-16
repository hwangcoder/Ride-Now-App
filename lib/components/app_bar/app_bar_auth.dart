
import 'package:flutter/material.dart';

import '../../resources/theme/app_colors.dart';
import '../../resources/theme/app_styles.dart';

class AppBarAuth extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAuth({super.key, this.title, this.subTitle});

  final String? title;
  final String? subTitle;

  @override
  Size get preferredSize => const Size.fromHeight(127.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ).copyWith(top: MediaQuery.of(context).padding.top + 10, bottom: 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF2BC1BB), Color(0xFFC5FCFF)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? '',
            style: AppStyles.kTextStyle20.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            subTitle ?? '',
            style: AppStyles.kTextStyle12.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
