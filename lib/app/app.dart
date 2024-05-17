import 'package:flutter/material.dart';
import 'package:workwise/screen/dashboard_screen.dart';
import 'package:workwise/screen/login_screen.dart';
import 'package:workwise/screen/signup_screen.dart';
import 'package:workwise/screen/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
