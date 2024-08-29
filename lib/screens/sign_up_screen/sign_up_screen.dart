import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/login_screen/login_screen.dart';
import 'package:clothes_store/screens/login_screen/widgets/custom_text_form_field.dart';
import 'package:clothes_store/screens/navigation_screen/navigation_screen.dart';
import 'package:clothes_store/screens/onboarding_screen/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName = 'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Transform.scale(scale:1.4,child: Image.asset('assets/images/freed.png')),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30,),
                child: Column(
                  children: [
                    CustomTextFormField(
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      label: 'Name',
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      label: 'Email',
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.number,
                      label: 'Number',
                      icon: Icon(
                        Icons.phone_android,
                        color: Colors.grey,
                      ),
                      obscureText: false,
                    ),
                    CustomTextFormField(
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
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      label: 'Confirm Password',
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 70),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomButton(
                  label: 'Create Account',
                  onPressed: () => Navigator.pushNamed(
                      context, NavigationScreen.routeName),
                ),
              ),
              // const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(
                      context,
                      LoginScreen.routeName,
                    ),
                    child: const Text(
                      'Log in',
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
      ),
    );
  }
}
