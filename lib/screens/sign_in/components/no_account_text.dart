import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../forget_password/forget_password_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                )),
        Text("Sign Up",
            style: TextStyle(fontSize: getProportionateScreenWidth(16), color: kPrimaryColor))
      ],
    );
  }
}