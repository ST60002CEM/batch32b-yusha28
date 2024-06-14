import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/app/navigator/navigator.dart';
import 'package:student_management_starter/features/authentication/presentation/navigator/register_navigator.dart';
import 'package:student_management_starter/features/authentication/presentation/view/login_view.dart';
import 'package:student_management_starter/features/home/presentation/view/home_view.dart';

final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute, LoginViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }

  openHomeView() {
    NavigateRoute.popAndPushRoute(const HomeView());
  }
}
