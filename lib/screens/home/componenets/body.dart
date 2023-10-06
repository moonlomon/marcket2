import 'package:flutter/material.dart';
import 'package:marcket2/screens/home/componenets/popular_products.dart';
import 'package:marcket2/screens/home/componenets/section_title.dart';
import 'package:marcket2/screens/home/componenets/special_offers.dart';
import 'package:marcket2/size_config.dart';

import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            PopularProducts(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}




