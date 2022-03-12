import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/login_body.dart';
import 'package:pippip_user_app/pages/main_app/main/main_view.dart';

class OtpScreen extends StatefulWidget {
  final String phone;
  const OtpScreen({
    Key? key,
    required this.phone,
  }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  String? _verificationCode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: LoginBody(
          imageAdress:
              'assets/images/two-factor-authentication-concept-illustration_114360-5488.png',
          inputFieldName: 'OTP gửi tới số ${widget.phone}',
          controller: _otpController,
          buttonLabel: 'Xác nhận',
          roundedButtonPressed: () async {
            String smsCode = _otpController.text.toString().trim();
            try {
              await FirebaseAuth.instance
                  .signInWithCredential(PhoneAuthProvider.credential(
                verificationId: _verificationCode!,
                smsCode: smsCode,
              ))
                  .then((UserCredential value) async {
                print(value.user);
                if (value.user != null) {
                  print("Navigated");
                  Future<String> iDToken = value.user!.getIdToken();
                  print('Firebase token: ${await value.user!.getIdToken()}');
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                    (route) => false,
                  );
                }
              });
            } catch (e) {
              FocusScope.of(context).unfocus();
            }
          },
          bottomSection: Text(''),
        ),
      ),
    );
  }

  _verifyPhone() async {
    //String phoneNumber = await PhoneUtils.convertToRegionCodePhone(widget.phone);
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // await FirebaseAuth.instance
        //     .signInWithCredential(credential)
        //     .then((value) {
        //   if (value.user != null) {
        //     print("User logged-in");
        //   }
        // });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationID, int? resendToken) {
        setState(() {
          _verificationCode = verificationID;
        });
      },
      codeAutoRetrievalTimeout: (String verificationID) {
        setState(() {
          _verificationCode = verificationID;
        });
      },
      timeout: const Duration(seconds: 60),
    );
  }

  @override
  void initState() {
    super.initState();
    _verifyPhone();
  }
}
