import 'package:flutter/material.dart';
import 'package:marcket2/size_config.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/default_button.dart';
import 'custom_suffix_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: <Widget>[
            Text(
              "Welcome Back",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Sign in with your email and password  \nor continue with social media",
              textAlign: TextAlign.center,
            ),
            SignForm()
          ],
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // *textFormFeild 생성 시 기본 세팅
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    // *textFormFeild 생성 시 기본 세팅2
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {},
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      // 텍스트폼필드 속성설정하기
      keyboardType: TextInputType.visiblePassword,
      obscureText: true, // * 비밀번호 가리기
      validator: (value) {
        if (value == null || value.isEmpty) {
          setState(() {
            errors.add("Please enter your password");
          });
        }
      },
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      // 텍스트폼필드 속성설정하기
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          setState(() {
            errors.add("Please enter your email");
          });
        }
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          )),
    );
  }
}
