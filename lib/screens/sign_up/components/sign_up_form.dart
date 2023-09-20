import 'package:flutter/material.dart';
import 'package:marcket2/screens/complete_profile/compleate_profile_screen.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../forget_password/forget_password_screen.dart';
import '../../login_success/login_success_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  // *textFormFeild 생성 시 기본 세팅
  final _formKey = GlobalKey<FormState>();
  late String email; // ?? late?
  late String password = '';
  late String conform_password;
  late bool remember = false;
  final List<String> errors = [];

  void addError(error) {
    setState(() {
      errors.add(error);
    });
  }

  void removeError(error) {
    setState(() {
      errors.remove(error);
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
          buildConformPassFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
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
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }


  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kConformPassNullError)) {
          removeError(kConformPassNullError);
          // print(password);
        } else if (password == value && errors.contains(kMatchPassError)) {
          removeError(kMatchPassError);
        }
        conform_password = value;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kConformPassNullError)) {
          addError(kConformPassNullError);
          return "";
        }
        else if (password != value && !errors.contains(kMatchPassError)) {
          addError(kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
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
        setState(() {
          password = value;
        });
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
