import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/main_home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEBE9),
      body: Stack(
        children: <Widget>[
          // Background image
          Center(
            child: Image(image: AssetImage('assets/images/splash.png'),
            ),
          ),
        ],
      ),
    );
  }
}


