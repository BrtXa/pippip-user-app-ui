import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/button_container.dart';
import 'package:pippip_user_app/components/circle_button_with_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 54),
            Image.asset('assets/images/ThanitJuly_80.png'),
            const SizedBox(height: 30),
            ButtonContainer(
              width: size.width * 300 / 320,
              height: size.height * 128 / 568,
              circular: 8,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleButtonWithText(
                        imageUrl: 'assets/images/car2.png',
                        label: "Đặt xe",
                        circleButtonPressed: () {},
                      ),
                      CircleButtonWithText(
                        imageUrl: 'assets/images/phone_24px.png',
                        label: "Gọi ngay",
                        circleButtonPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
