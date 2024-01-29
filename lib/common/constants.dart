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
const kSizedBoxH20 = SizedBox(height: 20);