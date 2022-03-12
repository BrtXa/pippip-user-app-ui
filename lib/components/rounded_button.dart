import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';

class RoundedButton extends StatelessWidget {
  final String? label;
  final Function roundedButtonPressed;
  const RoundedButton({
    Key? key,
    required this.label, 
    required this.roundedButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: size.width * 300 / 320,
      height: size.height * 40 / 568,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: TextButton(
          onPressed: () => roundedButtonPressed(),
          style: TextButton.styleFrom(
            backgroundColor: myColors[PRIMARY],
          ),
          child: Text(
            label!,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
