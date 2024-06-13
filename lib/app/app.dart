import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/app/navigator_key/navigator_key.dart';
import 'package:workwise/app/themes/app_theme.dart';
import 'package:workwise/features/splash/presentation/view/splash_view.dart';


class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getApplicationTheme(false),
      home:  SplashView(),
    );
  }
}