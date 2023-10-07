import 'package:flutter/material.dart';
import 'package:marcket2/size_config.dart';
import '../../components/rounded_icon_btn.dart';
import './components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: RoundedIconBtn(iconData: Icons.arrow_back_ios, press: () => Navigator.pop(context),),
      ),
      body: Body(),
    );
  }
}


