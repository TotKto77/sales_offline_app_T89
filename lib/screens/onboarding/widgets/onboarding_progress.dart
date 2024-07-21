import 'package:flutter/material.dart';
import 'package:t89/shered/theme/colors.dart';

class OnboardingProgress extends StatelessWidget {
  final int currentStep;

  const OnboardingProgress({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 95,
              height: 5,
              decoration: BoxDecoration(
                color: index <= currentStep ? AppColors.primaryColor : AppColors.grayColor,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            if (index < 2) const SizedBox(width: 5),
          ],
        );
      }),
    );
  }
}
