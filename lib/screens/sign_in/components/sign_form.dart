import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../forget_password/forget_password_screen.dart';
import '../../login_success/login_success_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // *textFormFeild 생성 시 기본 세팅
  final _formKey = GlobalKey<FormState>();
  late String email; // ?? late?
  late String password;
  late bool remember = false;
  final List<String> errors = [];

  void addError(value) {
    setState(() {
      errors.add(value);
    });
  }

  void removeError(vale) {
    setState(() {
      errors.remove(vale);
    });
  }

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
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
                activeColor: kPrimaryColor,
              ),
              Text("Remember Me"),
              Spacer(),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ))
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate() && errors.isEmpty) {
                _formKey.currentState?.save(); // ??
                Navigator.popAndPushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      // 텍스트폼필드 속성설정하기
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      // * 비밀번호 가리기
      onSaved: (newValue) => password = newValue!,
      // ?? !?
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          removeError(kPassNullError);
          // return ""; //?? 여기는 안되는 이유
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          // ??
          removeError(kShortPassError);
        }
        return null; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            addError(kPassNullError);
          });
          return ""; // ?? 이거 하는 이유
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          // ??
          addError(kShortPassError);
          return "";
        }
        return null; // ?? return을 안넣어주면 리스트가 계속 추가됨
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
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          // ??
          removeError(kInvalidEmailError);
        }
        return; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !errors.contains(kEmailNullError)) {
          addError(kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          // ??
          addError(kInvalidEmailError);
          return "";
        }
        return null; // ?? return을 안넣어주면 리스트가 계속 추가됨
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
