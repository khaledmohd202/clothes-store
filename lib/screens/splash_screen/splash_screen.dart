import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnboardingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: kMediaQueryHeight(context),
        width: kMediaQueryWidth(context),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/image3.jpg'),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            Icon(
              Icons.shopping_cart_outlined,
              size: 200,
              color: kSecondaryColor,
            ),
            Text(
              'Clothes Store',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(color: kSecondaryColor),
          ],
        ),
      ),
    );
  }
}
