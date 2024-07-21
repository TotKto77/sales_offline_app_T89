import 'package:flutter/material.dart';
import 'package:t89/shered/theme/colors.dart';

class AppTextStyles {
  static const TextStyle homeText = TextStyle(fontSize: 24);
  static const TextStyle loadingText = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    fontSize: 28,
    color: AppColors.primaryColor,
  );
  static const TextStyle onboardingTextStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xFF545878),
    height: 1.5,
  );
  static const TextStyle onboardingTitleStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static const TextStyle navText = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor,
  );
  static const TextStyle mainTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );
  static const TextStyle mainSubTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor,
  );
  static const TextStyle prodoctName = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.darkColor,
  );
  static const TextStyle prodoctTotalErn = TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.greenColor,
  );
}
