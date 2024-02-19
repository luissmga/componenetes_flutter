import 'package:flutter/material.dart';
import 'package:practica_basic_app/screens/home_screen.dart';
import 'package:practica_basic_app/theme/app_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreeen(),
      theme: AppTheme.lightTheme,
      );
  }
}
