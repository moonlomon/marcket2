import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundContainer extends StatelessWidget {
  const TopRoundContainer({
    super.key,
    required this.color,
    required this.child,
  });

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: child,
    );
  }
}