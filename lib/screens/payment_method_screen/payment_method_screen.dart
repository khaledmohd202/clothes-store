import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/payment_method_screen/widgets/order_price.dart';
import 'package:clothes_store/screens/payment_method_screen/widgets/payment_method.dart';
import 'package:clothes_store/screens/shipping_address_screen/shipping_address_screen.dart';
import 'package:clothes_store/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});
  static String routeName = 'PaymentMethodScreen';

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;

  void _handleRadio(Object? value) {
    setState(() {
      _type = value as int;
    });
  }

  @override
  void initState() {
    super.initState();
    _type = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Method',
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 16),
              PaymentMethod(
                value: 1,
                type: _type,
                handleRadio: _handleRadio,
                title: 'Amazon Pay',
                image: 'assets/images/amazon.png',
              ),
              PaymentMethod(
                value: 2,
                type: _type,
                handleRadio: _handleRadio,
                title: 'Google Pay',
                image: 'assets/images/google_pay.png',
              ),
              PaymentMethod(
                value: 3,
                type: _type,
                handleRadio: _handleRadio,
                title: 'Visa Card',
                image: 'assets/images/visa.png',
              ),
              PaymentMethod(
                value: 4,
                type: _type,
                handleRadio: _handleRadio,
                title: 'Master Card',
                image: 'assets/images/master_card.png',
              ),
              PaymentMethod(
                value: 5,
                type: _type,
                handleRadio: _handleRadio,
                title: 'PayPal',
                image: 'assets/images/paypal.png',
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Cash on Delivery',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              kSizedBoxH10,
              OrderPrice(
                title: 'Total:',
                price: ' \$ 1100.00',
                color: Colors.grey[700],
              ),
               OrderPrice(
                title: 'Shipping Fee:',
                price: ' \$ 12.00',
                color: Colors.grey[700],
              ),
              kDivider20,
              kSizedBoxH10,
              const OrderPrice(
                title: 'Total Amount:',
                price: ' \$ 1112.00',
                color: kSecondaryColor,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: kMediaQueryWidth(context),
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, ShippingAddressScreen.routeName);
                    },
                    child: const ContainerButtonModal(
                      text: 'Continue',
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
