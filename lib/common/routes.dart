import 'package:clothes_store/screens/cart_screen/cart_screen.dart';
import 'package:clothes_store/screens/favorites_screen/favorites_screen.dart';
import 'package:clothes_store/screens/home_screen/home_screen.dart';
import 'package:clothes_store/screens/login_screen/login_screen.dart';
import 'package:clothes_store/screens/navigation_screen/navigation_screen.dart';
import 'package:clothes_store/screens/onboarding_screen/onboarding_screen.dart';
import 'package:clothes_store/screens/forgot_screen/forgot_screen.dart';
import 'package:clothes_store/screens/otp_screen/otp_screen.dart';
import 'package:clothes_store/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:clothes_store/screens/payment_method_screen/payment_method_screen.dart';
import 'package:clothes_store/screens/product_screen/product_screen.dart';
import 'package:clothes_store/screens/profile_screen/profile_screen.dart';
import 'package:clothes_store/screens/qr_code/qr_code.dart';
import 'package:clothes_store/screens/recovery_screen/recovery_screen.dart';
import 'package:clothes_store/screens/sign_up_screen/sign_up_screen.dart';
import 'package:clothes_store/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  ForgotScreen.routeName: (context) => const ForgotScreen(),
  RecoveryScreen.routeName: (context) => const RecoveryScreen(),
  OTPScreen.routeName: (context) => const OTPScreen(),
  OTPVerificationScreen.routeName: (context) => const OTPVerificationScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  FavoritesScreen.routeName: (context) => const FavoritesScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  ProductScreen.routeName: (context) => const ProductScreen(),
  NavigationScreen.routeName: (context) => const NavigationScreen(),
  QRCode.routeName: (context) => const QRCode(),
  PaymentMethodScreen.routeName: (context) => const PaymentMethodScreen(),
};
