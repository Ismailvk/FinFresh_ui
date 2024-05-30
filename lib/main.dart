import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/views/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff00252B)),
        scaffoldBackgroundColor: AppColor.primaryColor,
        textTheme: const TextTheme()
            .copyWith(bodyMedium: const TextStyle(color: AppColor.white)),
      ),
      home: const BottomNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
