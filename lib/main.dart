import 'package:flutter/material.dart';

import 'package:t89/shered/theme/colors.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.lightGrayColor,
      ),
      home: const SplashScreen(),
    );
  }
}
