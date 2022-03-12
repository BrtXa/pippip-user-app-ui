import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';
import 'package:pippip_user_app/components/rounded_button.dart';
import 'package:pippip_user_app/components/rounded_input_field.dart';

class LoginBody extends StatelessWidget {
  final String? imageAdress;
  final String? inputFieldName;
  final Widget bottomSection;
  final String? buttonLabel;
  final Function roundedButtonPressed;
  final controller;
  const LoginBody({
    Key? key,
    required this.bottomSection,
    required this.imageAdress,
    required this.inputFieldName,
    required this.buttonLabel, 
    required this.roundedButtonPressed, 
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              imageAdress!,
            ),
            width: size.width,
            height: size.height * 269 / 568,
          ),
          //SvgPicture.asset("assets/icons/Group1844.svg"),
          SizedBox(height: 20),
          Row(
            children: [
              Spacer(flex: 10),
              Text(
                inputFieldName!,
                style: TextStyle(
                  color: myColors[PRIMARY],
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                ),
              ),
              Spacer(flex: 203),
            ],
          ),
          SizedBox(height: 12),
          RoundedInputField(controller: controller),
          SizedBox(height: 32),
          RoundedButton(
            label: buttonLabel,
            roundedButtonPressed: () => roundedButtonPressed(),
          ),
          SizedBox(height: 20),
          bottomSection,
        ],
      ),
    );
  }
}
