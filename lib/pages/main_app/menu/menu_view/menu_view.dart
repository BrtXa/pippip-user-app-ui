import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/button_container.dart';
import 'package:pippip_user_app/components/circle_button_with_text.dart';
import 'package:pippip_user_app/pages/login/view/login_view.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 40),
                ButtonContainer(
                  width: size.width * 300 / 320,
                  height: size.height * 84 / 568,
                  circular: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      CircleAvatar(
                        radius: size.height * 64 / (2 * 568),
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            const AssetImage("assets/images/avaimage.png"),
                      ),
                      const SizedBox(width: 116),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Jimmy",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "0987378533",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Đang hoạt động",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ButtonContainer(
                  width: size.width * 300 / 320,
                  height: size.height * 128 / 568,
                  circular: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleButtonWithText(
                        imageUrl:
                            'assets/images/sentiment_satisfied_alt_24px.png',
                        label: "Đổi tên",
                        circleButtonPressed: () {},
                      ),
                      CircleButtonWithText(
                        imageUrl: 'assets/images/perm_identity_24px.png',
                        label: "Đổi avatar",
                        circleButtonPressed: () {},
                      ),
                      CircleButtonWithText(
                        imageUrl: 'assets/images/arrow_forward_24px.png',
                        label: "Đăng xuất",
                        circleButtonPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (route) => false);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
