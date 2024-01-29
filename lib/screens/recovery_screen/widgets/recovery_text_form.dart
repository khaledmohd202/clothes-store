import 'package:clothes_store/common/constants.dart';
import 'package:flutter/material.dart';

class RecoveryTextForm extends StatelessWidget {
  const RecoveryTextForm({
    super.key,
    required this.obscureText,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.visible, this.keyboardType,
  });
  final bool obscureText;
  final String labelText;
  final String hintText;
  final Icon prefixIcon;
  final Icon suffixIcon;
  final bool visible;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: kSecondaryColor,
            width: 1.5,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: prefixIcon,
        // add suffix icon
        suffixIcon: Visibility(
          visible: visible,
          child: IconButton(
            onPressed: () {},
            icon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
