import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextFeild({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextFeild(value: value, focusNode: pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                      focusNode: pin2FocusNode,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                      decoration: otpInputDecoration,
                      onChanged: (value) {
                        nextFeild(value: value, focusNode: pin3FocusNode);
                      }),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                      focusNode: pin3FocusNode,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                      decoration: otpInputDecoration,
                      onChanged: (value) {
                        nextFeild(value: value, focusNode: pin4FocusNode);
                      }),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                      focusNode: pin4FocusNode,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                      decoration: otpInputDecoration,
                      onChanged: (value) {
                        pin4FocusNode.unfocus();
                      }),
                ),
              ]),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          DefaultButton(
            text: "Continue",
            press: () {},
          )
        ],
      ),
    );
  }
}