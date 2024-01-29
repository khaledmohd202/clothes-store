import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/home_screen/home_screen.dart';
import 'package:clothes_store/screens/login_screen/widgets/custom_text_form_field.dart';
import 'package:clothes_store/screens/onboarding_screen/widgets/custom_button.dart';
import 'package:clothes_store/screens/forgot_screen/forgot_screen.dart';
import 'package:clothes_store/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset('assets/images/freed.png'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      label: 'Email',
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    const CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      label: 'Password',
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pushNamed(
                              context, ForgotScreen.routeName),
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      label: 'Login',
                      onPressed: () =>
                          Navigator.pushNamed(context, HomeScreen.routeName),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pushNamed(
                            context,
                            SignUpScreen.routeName,
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
