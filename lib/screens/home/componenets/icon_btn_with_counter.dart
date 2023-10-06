import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key, required this.svgSrc, this.numOfItem = 0, required this.press,
  });

  final String svgSrc;
  final int numOfItem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        // overflow 파라미터 정의안됨..
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          Visibility(
            visible: numOfItem != 0 ,
            child: Positioned(
              right: 0,
              top: -0.3,
              child: Container(
                height: getProportionateScreenHeight(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                child: Center(
                  child: Text("$numOfItem", style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}