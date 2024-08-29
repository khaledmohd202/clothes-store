import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/order_confirmation_screen/widgets/shipping_details.dart';
import 'package:clothes_store/screens/order_success_screen/order_success_screen.dart';
import 'package:clothes_store/screens/payment_method_screen/payment_method_screen.dart';
import 'package:clothes_store/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({super.key});
  static String routeName = 'OrderConfirmationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Order Confirmation',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: kSecondaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSizedBoxH10,
            const Text(
              'Shipping Address',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: kSecondaryColor,
              ),
            ),
            kSizedBoxH10,
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: const ShippingDetails(),
            ),
            kSizedBoxH10,
            methodsHeader(
              'Payment Method',
              () {
                Navigator.pushNamed(context, PaymentMethodScreen.routeName);
              },
            ),
            kSizedBoxH10,
            paymentMethod(),
            kSizedBoxH20,
            methodsHeader('Delivery Method', () {
              Navigator.pushNamed(context, PaymentMethodScreen.routeName);
            }),
            Row(
              children: [
                containerOfMethods(
                  'assets/images/icon3.png',
                  () {},
                ),
                kSizedBoxW10,
                containerOfMethods(
                  'assets/images/dhl.png',
                  () {},
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: kMediaQueryHeight(context) / 5,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Confirm Payment',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: kSecondaryColor,
                            ),
                          ),
                          kSizedBoxH10,
                          const Text(
                            'Are you sure you want to confirm the payment?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          kSizedBoxH20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: ContainerButtonModal(
                                  text: 'Cancel',
                                  color: Colors.grey,
                                  containerWidth:
                                      kMediaQueryWidth(context) / 2.5,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // const SnackBar(
                                  //   content: Text('Payment Confirmed'),
                                  // );
                                  Navigator.pushNamed(
                                      context, OrderSuccessScreen.routeName);
                                },
                                child: ContainerButtonModal(
                                  text: 'Confirm',
                                  color: kSecondaryColor,
                                  containerWidth:
                                      kMediaQueryWidth(context) / 2.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: ContainerButtonModal(
                text: 'Confirm Payment',
                color: kSecondaryColor,
                containerWidth: kMediaQueryWidth(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Row methodsHeader(String title, void Function()? onPressed) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: kSecondaryColor,
        ),
      ),
      TextButton(
        onPressed: onPressed,
        child: const Text(
          'edit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: kPrimaryColor,
          ),
        ),
      ),
    ],
  );
}

Row paymentMethod() {
  return Row(
    children: [
      containerOfMethods(
        'assets/images/master_card.png',
        () {},
      ),
      kSizedBoxW10,
      Text(
        '**** **** **** 3947',
        style: TextStyle(color: Colors.grey[600]),
      ),
    ],
  );
}

InkWell containerOfMethods(
  String image,
  void Function()? onTap,
) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Image.asset(
        image,
        // fit: BoxFit.cover,
        height: 45,
        width: 70,
      ),
    ),
  );
}
