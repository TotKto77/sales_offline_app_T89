import 'package:flutter/material.dart';
import 'package:t89/navigator/nav_bar.dart';

import 'package:t89/screens/onboarding/widgets/build_title_for_step.dart';
import 'package:t89/screens/onboarding/widgets/onboarding_contend_1.dart';
import 'package:t89/screens/onboarding/widgets/onboarding_contend_2.dart';
import 'package:t89/screens/onboarding/widgets/onboarding_contend_3.dart';
import 'package:t89/shered/widgets/e_butto.dart';
import 'widgets/onboarding_progress.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentStep = 0;

  void _nextStep() {
    setState(() {
      if (_currentStep < 2) {
        _currentStep++;
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const RootScreen()),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _currentStep = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildTitleForStep(_currentStep),
                  const SizedBox(height: 20),
                  OnboardingProgress(currentStep: _currentStep),
                  Expanded(
                    child: Center(
                      child: _buildContent(),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: EButton(
                    text: 'Continue',
                    onPressed: _nextStep,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    switch (_currentStep) {
      case 0:
        return const OnboardingContend1();
      case 1:
        return const OnboardingContend2();
      case 2:
        return const OnboardingContend3();
      default:
        return Container();
    }
  }
}
