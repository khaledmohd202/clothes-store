import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/login_screen/login_screen.dart';
import 'package:clothes_store/screens/onboarding_screen/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final GlobalKey introKey = GlobalKey<IntroductionScreenState>();
  static String routeName = 'OnboardingScreen';
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28, fontWeight: FontWeight.bold, color: kSecondaryColor),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.grey,
      ),
      bodyAlignment: Alignment.center,
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      //imageAlignment: Alignment.center,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Welcome',
          body: 'Welcome to Clothes Store',
          image: Image.asset('assets/images/splash3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop',
          body: 'Shop for clothes',
          image: Image.asset('assets/images/splash2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Enjoy',
          body: 'Enjoy your shopping',
          image: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset('assets/images/splash1.png'),
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(
              top: 150,
              left: 20,
              right: 20,
            ),
            child: CustomButton(
              label: 'Get Started',
              onPressed: () =>
                  Navigator.pushNamed(context, LoginScreen.routeName),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text(
        'Back',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kSecondaryColor,
        ),
      ),
      next: const Text(
        'Next',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kSecondaryColor,
        ),
      ),
      done: const Text(
        'Done',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kSecondaryColor,
        ),
      ),
      skip: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kSecondaryColor,
        ),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: const DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: kSecondaryColor,
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
    );
  }
}
