import 'package:fitness_app/splash_screen.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.secondaryColor


      ),
      home: SplashScreen(),
    );
  }
}
