import 'package:flutter/material.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
              product.colors.length,
                  (index) => ColorDot(
                color: product.colors[index],
                isSelected: selectedColor == index,
                selectedColor: selectedColor,
              )),
          Spacer(),
          RoundedIconBtn(iconData: Icons.remove, press: (){},),
          SizedBox(width: getProportionateScreenWidth(15),),
          RoundedIconBtn(iconData: Icons.add, press: (){},),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
    required this.selectedColor,
  });

  final Color color;
  final bool isSelected;
  final int selectedColor;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    return Container(
      padding: EdgeInsets.all(8),
      // margin: EdgeInsets.only(right: 5),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}