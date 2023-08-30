import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
        Spacer(flex: 2,), //??
        Expanded(
          flex: 3,
          child: Text(
            "TOKOTO",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(40),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(flex: 3, child: Text(text, textAlign: TextAlign.center,)),
        Spacer(), //??
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}