import 'package:clothes_store/common/constants.dart';
import 'package:clothes_store/screens/recovery_screen/recovery_screen.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});
  static String routeName = 'OTPVerificationScreen';

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
    BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: kSecondaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP Verification',
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Enter the OTP code, That sent to your number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 50),
              TextFieldPin(
                textController: textEditingController,
                margin: 10.0,
                codeLength: 5,
                autoFocus: false,
                alignment: MainAxisAlignment.center,
                selectedBoxSize: 46.0,
                defaultBoxSize: 46.0,
                textStyle:const TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                  border: Border.all(
                    color: kSecondaryColor.withOpacity(0.6),
                    width: 1.5,
                  ),
                ),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(() {
                    
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t receive the code?',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      // there is no api for resend otp code
                    },
                    child: const Text(
                      'Resend Again',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RecoveryScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
