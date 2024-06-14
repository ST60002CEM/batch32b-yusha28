import 'dart:async';
import 'package:flutter/material.dart';
import 'package:student_management_starter/features/authentication/presentation/view/login_view.dart';



class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginView()));
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
