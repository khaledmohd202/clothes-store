import 'package:clothes_store/common/constants.dart';
import 'package:flutter/material.dart';

class ShippingInformation extends StatelessWidget {
  const ShippingInformation({
    super.key,
    required this.title,
    this.iconData,
  });
  final String title;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
        ),
        kSizedBoxW10,
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
