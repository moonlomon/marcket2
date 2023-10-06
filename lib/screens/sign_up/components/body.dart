import 'package:flutter/material.dart';
import 'package:marcket2/constants.dart';
import 'package:marcket2/screens/otp/otp_screen.dart';
import 'package:marcket2/screens/sign_up/components/sign_up_form.dart';

import '../../../size_config.dart';
import '../../complete_profile/compleate_profile_screen.dart';
import '../../sign_in/components/sign_form.dart';
import '../../../components/socal_card.dart';

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
                "Register Account",
                style: headingSytle,
              ),
              Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocalCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocalCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {
                      // Navigator.pushNamed(context, OTPScreen.routeName); // 테스트용 버튼
                    },
                  ),
                  SocalCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {
                      // Navigator.pushNamed(context, CompleteProfileScreen.routeName); // 테스트용 버튼
                    },
                  ),
                ],
              ),

              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "By continuing your confirm that you agree\nwith our Teerm and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
