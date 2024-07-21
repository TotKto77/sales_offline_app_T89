import 'package:flutter/material.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/theme/text_s.dart';

Widget buildTitleForStep(int step) {
  switch (step) {
    case 0:
      return const Text(
        'Welcome',
        style: AppTextStyles.onboardingTitleStyle,
        textAlign: TextAlign.center,
      );
    case 1:
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppTextStyles.onboardingTitleStyle,
          children: [
            TextSpan(
              text: 'Watch ',
              style: AppTextStyles.onboardingTitleStyle.copyWith(color: Colors.black),
            ),
            TextSpan(
              text: 'Statistics',
              style: AppTextStyles.onboardingTitleStyle.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      );
    case 2:
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppTextStyles.onboardingTitleStyle,
          children: [
            TextSpan(
              text: 'Collect ',
              style: AppTextStyles.onboardingTitleStyle.copyWith(color: Colors.black),
            ),
            TextSpan(
              text: 'Achievements',
              style: AppTextStyles.onboardingTitleStyle.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      );
    default:
      return Container();
  }
}
