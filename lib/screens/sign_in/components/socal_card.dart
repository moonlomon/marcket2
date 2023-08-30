import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    super.key, required this.icon, required this.press,
  });

  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40), // ?? 너무 작으면 안보일 수 있음
        decoration: BoxDecoration(
            color: Color(0xFFF5F6F9),
            shape: BoxShape.circle
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
