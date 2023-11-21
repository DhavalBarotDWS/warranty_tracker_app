import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warranty_tracker_app/utils/locale_strings.dart';
import 'package:warranty_tracker_app/views/screens/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Warranty Tracker',
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      locale: const Locale('en','US'),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}