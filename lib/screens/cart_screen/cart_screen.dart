import 'package:clothes_store/common/constants.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = 'CartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        foregroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(),
    );
  }
}
