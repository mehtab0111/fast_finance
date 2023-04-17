import 'dart:async';
import 'package:fast_finance/Screen/introduction.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:fast_finance/Screen/Auth/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Introduction()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    if(_timer.isActive) _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customDesignShade(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
            child: Image.asset('images/app_logo.png'),
          ),
        ),
      ),
    );
  }
}
