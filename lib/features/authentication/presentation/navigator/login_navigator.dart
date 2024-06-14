import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/app/navigator/navigator.dart';
import 'package:workwise/features/authentication/presentation/navigator/register_navigator.dart';

import 'package:workwise/features/authentication/presentation/view/login_view.dart';
import 'package:workwise/features/home/presentation/navigator/home_navigator.dart';
import 'package:workwise/features/home/presentation/view/home_view.dart';

final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute, HomeViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }

  // openHomeView() {
  //   NavigateRoute.popAndPushRoute(const HomeView());
  // }
}
