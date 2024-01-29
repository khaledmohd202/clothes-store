import 'package:clothes_store/common/constants.dart';
// import 'package:clothes_store/common/routes.dart';
import 'package:clothes_store/screens/navigation_screen/navigation_screen.dart';
// import 'package:clothes_store/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // routes: routes,
      // initialRoute: SplashScreen.routeName,
      home: const NavigationScreen(),
    );
  }
}
