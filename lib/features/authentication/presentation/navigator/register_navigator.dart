
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/app/navigator/navigator.dart';
import 'package:workwise/features/authentication/presentation/view/signup_view.dart';

final registerViewNavigatorProvider = Provider((ref) => RegisterViewNavigator());

class RegisterViewNavigator {}

mixin RegisterViewRoute {
  openRegisterView() {
    NavigateRoute.pushRoute(const SignUpView());
  }
}