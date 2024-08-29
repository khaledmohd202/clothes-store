import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/login_screen/login_screen.dart';
import 'package:clothes_store/screens/recovery_screen/widgets/recovery_text_form.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});
  static String routeName = 'RecoveryScreen';

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset your Password',
          style: TextStyle(
            color: kSecondaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                'Please enter the code sent to your email address and your new password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 60),
              RecoveryTextForm(
                keyboardType: TextInputType.phone,
                obscureText: false,
                labelText: 'Code',
                hintText: 'Enter your code',
                prefixIcon: Icon(Icons.numbers, color: Colors.black.withOpacity(0.3),),
                visible: false,
                suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black.withOpacity(0.3),),
              ),
              const SizedBox(height: 20),
              RecoveryTextForm(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                labelText: 'New Password',
                hintText: 'Enter your new password',
                prefixIcon: Icon(Icons.lock, color: Colors.black.withOpacity(0.3),),
                suffixIcon: const Icon(Icons.remove_red_eye),
                visible: true,
              ),
              const SizedBox(height: 20),
              RecoveryTextForm(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                labelText: 'Confirm Password',
                hintText: 'Confirm your new password',
                prefixIcon: Icon(Icons.lock,color: Colors.black.withOpacity(0.3),),
                suffixIcon: const Icon(Icons.remove_red_eye),
                visible: true,
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                // height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    fixedSize: const Size(double.infinity, 60.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
