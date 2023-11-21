import 'dart:async';

import 'package:flutter/material.dart';
import 'package:warranty_tracker_app/utils/colors.dart';
import 'package:warranty_tracker_app/views/screens/language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const LanguageScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
          color: AppColors.whiteColor,
          child:FlutterLogo(size:MediaQuery.of(context).size.height)
      ),
    );
  }
}
