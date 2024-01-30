import 'package:flutter/material.dart';

class ContainerButtonModal extends StatelessWidget {
  const ContainerButtonModal({
    super.key,
    this.color,
    this.containerWidth,
    required this.text,
  });
  final Color? color;
  final double? containerWidth;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
