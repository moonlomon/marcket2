import 'package:flutter/material.dart';
import 'package:marcket2/screens/complete_profile/components/complete_profile_form.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/components/socal_card.dart';
import '../../sign_up/components/sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Complete Profile",
                style: headingSytle,
              ),
              Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                "By continuing your confirm that you agree\nwith our Teerm and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );;
  }
}
