import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../size_config.dart';

class CustomAppbar extends PreferredSize {
  CustomAppbar(this.rating)
      : super(
    preferredSize: Size.fromHeight(kToolbarHeight), // AppBar의 기본 높이를 사용
    child: AppBar(
      backgroundColor: Colors.blue, // AppBar 배경색 설정
      leading: RoundedIconBtn(
        iconData: Icons.arrow_back_ios,
        press: (){},
      ),
      title: Text("Product Detail"), // AppBar 제목 설정
    ),
  );

  final double rating;

  @override
  Size get preferredSize => super.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          // margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconBtn(
                press: () => Navigator.pop(context),
                iconData: Icons.arrow_back_ios,
                iconLeftPadding: 4,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(14)
                ),
                child: Row(
                  children: [
                    Text("$rating", style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(width: 5,),
                    SvgPicture.asset("assets/icons/Star Icon.svg")
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}