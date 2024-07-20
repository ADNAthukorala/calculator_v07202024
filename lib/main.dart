import 'package:calculator_v07202024/calculator_screen.dart';
import 'package:calculator_v07202024/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kEqualBtnClr),
        scaffoldBackgroundColor: kBckgrndClr,
        appBarTheme: const AppBarTheme(
          backgroundColor: kBckgrndClr,
          foregroundColor: Colors.white,
          elevation: 2.0,
          shadowColor: kBckgrndClr,
        ),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}
