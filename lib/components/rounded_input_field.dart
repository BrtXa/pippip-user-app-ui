import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';

class RoundedInputField extends StatelessWidget {
  final controller;
  const RoundedInputField({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: myColors[PRIMARY],
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 14,
        ),
        //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        //keyboardType: TextInputType.number,
        showCursor: false,
        controller: controller,
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  const TextFieldContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: size.width * 300 / 320,
      height: size.height * 40 / 588,
      padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          width: 1,
          color: myColors[BOXBORDER]!,
        ),
      ),
      child: child,
    );
  }
}
