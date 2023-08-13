import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: FilledButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
                  (states) {
                // ?? 상태에 따라 다른 색상 반환
                if (states.contains(MaterialState.pressed)) {
                  return kPrimaryLightColor; // 눌렸을 때 색상
                }
                return kPrimaryColor; // 일반 상태 색상
              },
            )
        ),
        onPressed: press,
        child: Text(text, style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white
        ),),
      ),
    );
  }
}