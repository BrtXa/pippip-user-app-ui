import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';

class ButtonContainer extends StatelessWidget {
  final double width;
  final double height;
  final double circular;
  final Widget child;
  const ButtonContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.circular, 
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: myColors[BOXBORDER]!,
        ),
        borderRadius: BorderRadius.circular(circular),
      ),
      child: child,
    );
  }
}
