import 'package:clothes_store/common/constants.dart';
import 'package:flutter/material.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final void Function() onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          // add title
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        InkWell(
          onTap: onPressed,
          child: const Text(
            'See All',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
