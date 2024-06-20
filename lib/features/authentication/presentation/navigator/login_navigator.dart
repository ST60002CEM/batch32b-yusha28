import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/app/navigator/navigator.dart';
import 'package:workwise/features/authentication/presentation/navigator/register_navigator.dart';
import 'package:workwise/features/authentication/presentation/view/login_view.dart';


final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.pushRoute(const LoginView());
  }
}