import 'package:flutter/material.dart';
import 'package:marcket2/screens/home/componenets/section_title.dart';

import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length, (index) => ProductCard(
                product: demoProducts[index],
              ),
              ),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}