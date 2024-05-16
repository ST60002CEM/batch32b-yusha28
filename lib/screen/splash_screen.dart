import 'dart:async';
import 'package:flutter/material.dart';
import 'package:workwise/screen/login_screen.dart';
import 'package:workwise/screen/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace this Icon with an Image widget
            Image.asset(
              'assets/images/WorkWise.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
