import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/home_screen/home_screen.dart';
import 'package:clothes_store/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});
  static String routeName = 'OrderSuccessScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset('assets/images/success.jpg'),
              const Text(
                'Your order has been placed successfully',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                'Order ID: 123456789',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                'Thank you for shopping with us',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ContainerButtonModal(text: 'Continue Shopping',
                    color: Colors.green,
                    containerWidth: kMediaQueryWidth(context),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
