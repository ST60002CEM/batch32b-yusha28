
import 'package:flutter/material.dart';
import 'package:workwise/features/splash/presentation/view/splash_view.dart';


import 'navigator_key/navigator_key.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      home:SplashView(),
    );
  }
}