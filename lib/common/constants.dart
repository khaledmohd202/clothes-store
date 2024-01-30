import 'package:flutter/material.dart';

// Colors
const kPrimaryColor = Color(0xFFEF6969);
const kSecondaryColor = Color.fromARGB(255, 238, 80, 80);

// Sizes
double kMediaQueryWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;
double kMediaQueryHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

// SizedBox
const kSizedBoxH30 = SizedBox(height: 30);
const kSizedBoxH20 = SizedBox(height: 20);
const kSizedBoxH10 = SizedBox(height: 10);
const kSizedBoxH5 = SizedBox(height: 5);
const kSizedBoxW10 = SizedBox(width: 10);
const kSizedBoxW5 = SizedBox(width: 5);
const kSizedBoxW20 = SizedBox(width: 20);
const kSizedBoxW30 = SizedBox(width: 30);

// Divider
final kDivider20 = Divider(
  height: 20,
  indent: 10,
  endIndent: 10,
  color: Colors.grey[300],
);
