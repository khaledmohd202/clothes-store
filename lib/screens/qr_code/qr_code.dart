import 'package:clothes_store/common/constants.dart';
import 'package:flutter/material.dart';

class QRCode extends StatelessWidget {
  const QRCode({super.key});
  static String routeName = 'QRCode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'QR Code',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          leading: const BackButton(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Image.asset(
                'assets/images/qr_code.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 16),
              const Text(
                'Scan this QR Code to pay',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
