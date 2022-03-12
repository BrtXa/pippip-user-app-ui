import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';

class CircleButtonWithText extends StatelessWidget {
  final String imageUrl;
  final String label;
  final Function circleButtonPressed;
  const CircleButtonWithText({
    Key? key,
    required this.imageUrl,
    required this.label,
    required this.circleButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 60 / 320,
      height: size.height * 80 / 568,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: TextButton(
              onPressed: () => circleButtonPressed(),
              child: ImageIcon(
                AssetImage(imageUrl),
                size: 28,
                color: myColors[BOXBORDER],
              ),
              style: TextButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: myColors[PRIMARY],
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
