import 'package:flutter/material.dart';
import 'package:marcket2/screens/home/componenets/search_feild.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchFeild(),
          IconBtnWithCounter(svgSrc: "assets/icons/Cart Icon.svg", press: (){},),
          IconBtnWithCounter(svgSrc: "assets/icons/Bell.svg", press: (){}, numOfItem: 3,),
        ],
      ),
    );
  }
}