import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn(
      {super.key,
      required this.iconData,
      required this.press,
      this.iconLeftPadding = 0});

  final IconData iconData;
  final GestureTapCallback press;
  final double iconLeftPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          iconColor: MaterialStateProperty.all<Color>(Colors.black),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          elevation: MaterialStateProperty.all<double>(0),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.only(
                top: 9,
                bottom: 9,
                left: 9 + iconLeftPadding,
                right: 9), // 아이콘 주변의 여백을 조절
          ),
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
