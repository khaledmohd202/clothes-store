import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/login_screen/widgets/custom_text_form_field.dart';
import 'package:clothes_store/screens/order_confirmation_screen/order_confirmation_screen.dart';
import 'package:clothes_store/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});
  static String routeName = 'ShippingAddressScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Shipping Address',
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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CustomTextFormField(
              label: 'Full Name',
              icon: Icon(Icons.person),
              obscureText: false,
              keyboardType: TextInputType.name,
            ),
            const CustomTextFormField(
              label: 'Phone Number',
              icon: Icon(Icons.phone),
              obscureText: false,
              keyboardType: TextInputType.phone,
            ),
            const CustomTextFormField(
              label: 'Address',
              icon: Icon(Icons.location_on),
              obscureText: false,
              keyboardType: TextInputType.streetAddress,
            ),
            const CustomTextFormField(
              label: 'City',
              icon: Icon(Icons.location_city),
              obscureText: false,
              keyboardType: TextInputType.streetAddress,
            ),
            const CustomTextFormField(
              label: 'State',
              icon: Icon(Icons.domain),
              obscureText: false,
              keyboardType: TextInputType.streetAddress,
            ),
            const CustomTextFormField(
              label: 'Zip Code "Postal Code"',
              icon: Icon(Icons.local_post_office),
              obscureText: false,
              keyboardType: TextInputType.phone,
            ),
            const CustomTextFormField(
              label: 'Country',
              icon: Icon(Icons.public),
              obscureText: false,
              keyboardType: TextInputType.streetAddress,
            ),
            kSizedBoxH10,
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, OrderConfirmationScreen.routeName);
              },
              child: ContainerButtonModal(
                text: 'Save Address',
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
