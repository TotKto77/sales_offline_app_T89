import 'package:flutter/material.dart';
import 'package:t89/shered/assets/png_assets.dart';
import 'package:t89/shered/strings.dart';
import 'package:t89/shered/theme/text_s.dart'; // Импортируем текстовые стили

class OnboardingContend3 extends StatelessWidget {
  const OnboardingContend3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 35,
            horizontal: 16,
          ),
          child: Text(
            AppStrings.values['onboarding3'] ?? 'Default Text',
            style: AppTextStyles.onboardingTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(
              PngAssets.onboarding3,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
