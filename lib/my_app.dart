import 'package:firebase_course/constants/bindings.dart';
import 'package:firebase_course/views/screens/home_screen.dart';
import 'package:firebase_course/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: "/home",
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: "/splash",
          page: () => const SplashScreen(),
        ),
      ],
      initialRoute: "/splash",
      initialBinding: AppBinding(),
    );
  }
}
