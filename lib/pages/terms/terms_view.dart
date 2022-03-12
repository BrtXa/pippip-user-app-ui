import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 6),
            Row(
              children: [
                Spacer(flex: 15),
                Container(
                  width: size.width * 32/320,
                  height: size.height * 32/588,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      width: 1.0,
                      color: myColors[BOXBORDER]!,
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: myColors[PRIMARY],
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 273),
              ],
            ),
            SizedBox(height: 5),
            Container(
              width: size.width * 300/320,
              height: size.height * 501/568,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1.0,
                  color: myColors[BOXBORDER]!,
                ),
              ),
              child: Column(
                children: [
                  Spacer(flex: 13),
                  Text(
                    "Điều khoản sử dụng",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: myColors[PRIMARY]!,
                    ),
                  ),
                  Spacer(flex: 164),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}