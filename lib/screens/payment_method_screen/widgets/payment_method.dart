import 'package:clothes_store/common/constants.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
    required this.type,
    required this.handleRadio,
    required this.title,
    required this.image,
    required this.value,
  });
  final int type;
  final int value;
  final void Function(int?) handleRadio;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kMediaQueryWidth(context),
      height: 60,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: type == value
            ? Border.all(
                color: kSecondaryColor,
                width: 1,
              )
            : Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    value: value,
                    groupValue: type,
                    onChanged: handleRadio,
                    activeColor: kSecondaryColor,
                  ),
                  Text(
                    title,
                    style: type == value
                        ? TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.grey[700],
                          )
                        : const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                  ),
                ],
              ),
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
