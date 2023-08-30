import 'package:flutter/material.dart';
import 'package:marcket2/size_config.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../sign_in/components/no_account_text.dart';
import 'forget_pass_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text("Forgot Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenHeight(28),
                      color: Colors.black)),
              Text(
                "Please enter your email and we will send\nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              ForgotPassForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              NoAccountText()
            ],
          ),
        ),
      ),
    );
  }
}


