import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/order_confirmation_screen/widgets/shipping_information.dart';
import 'package:clothes_store/screens/shipping_address_screen/shipping_address_screen.dart';
import 'package:flutter/material.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Dear Pro',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ShippingAddressScreen.routeName);
              },
              child: const Text(
                'edit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: kSecondaryColor,
                ),
              ),
            ),
          ],
        ),
        const ShippingInformation(
          title: 'Full Name',
          iconData: Icons.person,
        ),
        kSizedBoxH10,
        const ShippingInformation(
          title: 'Phone Number',
          iconData: Icons.phone,
        ),
        kSizedBoxH10,
        const ShippingInformation(
          title: 'Address',
          iconData: Icons.location_on,
        ),
        kSizedBoxH10,
        const ShippingInformation(
          title: 'City',
          iconData: Icons.location_city,
        ),
        kSizedBoxH10,
        const ShippingInformation(
          title: 'State',
          iconData: Icons.domain,
        ),
        kSizedBoxH10,
        const ShippingInformation(
          title: 'Zip Code "Postal Code"',
          iconData: Icons.location_on,
        ),
      ],
    );
  }
}
