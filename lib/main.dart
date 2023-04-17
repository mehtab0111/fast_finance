import 'package:flutter/material.dart';
import 'package:fast_finance/Screen/splashScreen.dart';
import 'package:fast_finance/Theme/colors.dart';

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
      title: 'Free Cash',
      theme: Constants.lightTheme,
      home: SplashScreen(),
    );
  }
}
