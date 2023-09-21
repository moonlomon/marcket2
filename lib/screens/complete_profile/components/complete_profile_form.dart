import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../otp/otp_screen.dart';
import '../compleate_profile_screen.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  // *textFormFeild 생성 시 기본 세팅
  final _formKey = GlobalKey<FormState>();
  late String PhoneNumber; // ?? late?
  late String firstName = '';
  late String LastName;
  late String Address;
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
          buildFirstName(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastName(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumber(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddress(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate() && errors.isEmpty) {
                _formKey.currentState?.save(); // ??
                Navigator.pushNamed(context, OTPScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildFirstName() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      // ?? !?
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kFirstNamelNullError)) {
          removeError(kFirstNamelNullError);
          // return ""; //?? 여기는 안되는 이유
        }
        return null; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !errors.contains(kFirstNamelNullError)) {
          setState(() {
            addError(kFirstNamelNullError);
          });
          return ""; // ?? 이거 하는 이유
        }
        return null; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      decoration: InputDecoration(
          labelText: "First Name",
          hintText: "Enter your first name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildLastName() {
    return TextFormField(
      onSaved: (newValue) => LastName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kLastNamelNullError)) {
          removeError(kLastNamelNullError);
          // print(password);
        }
        LastName = value;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kLastNamelNullError)) {
          addError(kLastNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumber() {
    return TextFormField(
      // 텍스트폼필드 속성설정하기
      keyboardType: TextInputType.number,
      onSaved: (newValue) => PhoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          removeError(kPhoneNumberNullError);
        }
        return; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          addError(kPhoneNumberNullError);
          return "";
        }
        return null; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      decoration: InputDecoration(
          labelText: "Phone Number",
          hintText: "Enter your phone number",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Phone.svg",
          )),
    );
  }

  TextFormField buildAddress() {
    return TextFormField(
      onSaved: (newValue) => Address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          removeError(kAddressNullError);
        }
        return; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      validator: (value) {
        if (value == null ||
            value.isEmpty && !errors.contains(kAddressNullError)) {
          addError(kAddressNullError);
          return "";
        }
        return null; // ?? return을 안넣어주면 리스트가 계속 추가됨
      },
      decoration: InputDecoration(
          labelText: "Address",
          hintText: "Enter your Address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Location point.svg",
          )),
    );
  }
}