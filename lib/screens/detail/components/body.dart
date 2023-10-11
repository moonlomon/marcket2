import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marcket2/components/default_button.dart';
import 'package:marcket2/components/rounded_icon_btn.dart';
import 'package:marcket2/constants.dart';
import 'package:marcket2/screens/detail/components/product_description.dart';
import 'package:marcket2/screens/detail/components/product_image.dart';
import 'package:marcket2/screens/detail/components/top_round_container.dart';
import 'package:marcket2/size_config.dart';

import '../../../models/Product.dart';
import 'color_dots.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(product: product, pressOnSeeMore: () {}),
              TopRoundContainer(
                color: Color(0xFFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                          top: getProportionateScreenWidth(10),
                          // bottom: getProportionateScreenWidth(40)
                        ),
                        child: DefaultButton(
                          text: "Add to Cart",
                          press: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
