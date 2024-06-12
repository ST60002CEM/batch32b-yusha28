import 'package:flutter/material.dart';
import 'package:workwise/app/navigator_key/navigator_key.dart';
import 'package:workwise/app/themes/app_theme.dart';


class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getApplicationTheme(false),
      home: const SplashView(),
    );
  }
}