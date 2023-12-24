import 'package:flick_admin_panel/screens/custom_nav_bar/custom_nav_bar.dart';
import 'package:flick_admin_panel/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryBlack,
        primarySwatch: Colors.blue,
      ),
      home: const CustomNavBar(),
    );
  }
}
