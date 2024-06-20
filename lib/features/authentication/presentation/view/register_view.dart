import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/app/navigator/navigator.dart';
import 'package:workwise/features/authentication/domain/entity/auth_entity.dart';
import 'package:workwise/features/authentication/presentation/view/login_view.dart';
import 'package:workwise/features/authentication/presentation/view_model/auth_view_model.dart';
import 'package:workwise/screen/login_screen.dart';

class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({super.key});

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _register() async {
    // Here you should add your registration logic
    var user = AuthEntity(
      fullname: _nameController.text,
      // image: ref.read(authViewModelProvider).imageName ?? '',
      email: _emailController.text,
      password: _passwordController.text,
    );

    ref.read(authViewModelProvider.notifier).register(user);
  }

  void _loginWithGoogle() {
    // Here you should add your Google login logic
    print('Login with Google');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 29, 191, 115),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Your Name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            hintText: 'Confirm Password',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                          ),

                          //   validator: (value) {
                          //     if (value!.isEmpty) {
                          //       return 'Please confirm password';
                          //     } else if (value != _passwordController.text) {
                          //       return 'Passwords do not match';
                          //     }
                          //     return null;
                          //   },
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: _register,
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 29, 191, 115),
                              textStyle: TextStyle(color: Colors.white)),
                        ),
                        // SizedBox(
                        //   width: double.infinity,
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       Navigator.pushReplacement(
                        //         context,
                        //         MaterialPageRoute(builder: (_) => LoginView()),
                        //       );
                        //       // Implement sign-up logic here
                        //       if (Form.of(context)!.validate()) {
                        //         // Validation passed, handle sign-up process
                        //         // Example: Register user with entered credentials
                        //         String name = _nameController.text;
                        //         String email = _emailController.text;
                        //         String password = _passwordController.text;

                        // Call API or perform sign-up action
                        // Example: AuthService.signUp(name, email, password);

                        // Optionally, show a success message or perform other actions
                        //   }
                        // },
                        //   child: Text(
                        //     'Sign Up',
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: Color.fromARGB(255, 29, 191, 115),
                        //   ),
                        // ),
                        // ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already Have An Account?"),
                            TextButton(
                              onPressed: () {
                                NavigateRoute.pushRoute(const LoginView());
                              },
                              child: Text('Login'),
                            ),
                            // SizedBox(width: 5),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigate to login screen
                            //     Navigator.pushReplacement(
                            //       context,
                            //       MaterialPageRoute(builder: (_) => LoginView()),
                            //     ); // Return to previous screen
                            //   },
                            //   child: Text(
                            //     'Log In',
                            //     style: TextStyle(
                            //       color: const Color.fromARGB(255, 26, 148, 248),
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),

                        SizedBox(height: 10),
                        ElevatedButton.icon(
                          icon: Icon(Icons.login),
                          label: Text('Login with Google'),
                          onPressed: _loginWithGoogle,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              textStyle: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ])));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
