import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marcket2/constants.dart';
import 'package:marcket2/models/Cart.dart';
import 'package:marcket2/size_config.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      itemCount:demoCarts.length ,
      itemBuilder: (context,index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Dismissible(
            key: Key(demoCarts[0].product.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0xFFFFE6E6), borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg")
                ],
              ),
            ),
            child: CartItemCard(cart: demoCarts[index]),
          onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
          },
        ),
      ),
    );
  }
}
