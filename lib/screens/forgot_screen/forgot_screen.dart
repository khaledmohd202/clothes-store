import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/otp_screen/otp_screen.dart';
import 'package:clothes_store/screens/recovery_screen/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});
  static String routeName = 'ForgotScreen';

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
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
              const SizedBox(height: 50),
              const Text(
                'Please enter your email address. You will receive a link to create a new password via email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 50),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    setState(() {
                      clrButton = true;
                    });
                  } else {
                    setState(() {
                      clrButton = false;
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  suffix: InkWell(
                    onTap: () {
                      emailController.clear();
                      setState(() {
                        clrButton = false;
                      });
                    },
                    child: const Icon(CupertinoIcons.multiply),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    if (clrButton) {
                      Navigator.pushNamed(context, RecoveryScreen.routeName);
                    }
                  },
                  child: const Text(
                    'Send Code',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Verify using Number',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, OTPScreen.routeName);
                    },
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
