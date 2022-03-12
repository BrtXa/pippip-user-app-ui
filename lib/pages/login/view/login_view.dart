import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pippip_user_app/components/login_body.dart';
import 'package:pippip_user_app/components/palette.dart';
import 'package:pippip_user_app/pages/otp/view/otp_view.dart';
import 'package:pippip_user_app/pages/terms/terms_view.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: LoginBody(
          imageAdress: 'assets/images/Group1844.png',
          inputFieldName: "Số điện thoại",
          buttonLabel: 'Đăng nhập',
          controller: _phoneController,
          // roundedButtonPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => OtpScreen(phone: _phoneController.text),
          //     ),
          //   );
          // },
          roundedButtonPressed: () => SchedulerBinding.instance!.addPostFrameCallback((_) { 
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OtpScreen(phone: _phoneController.text),
              ),
            );
          }),
          bottomSection: Container(
            child: Column(
              children: [
                Text(
                  "Khi tiếp tục, bạn được coi là đã đồng ý với",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    color: myColors[PRIMARY],
                  ),
                ),
                TextButton(
                  // onPressed: () {
                  //   Navigator.of(context).pushNamed(AppRoutes.OTP);
                  // },
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TermsScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    "Điều khoản sử dụng",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 12,
                      color: myColors[PRIMARY],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
