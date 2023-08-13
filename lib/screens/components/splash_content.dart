import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.image,
  });

  final String text, image; // ?? 일괄복붙 어케함

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(), //??
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center,),
        Spacer(flex: 2), //??
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}