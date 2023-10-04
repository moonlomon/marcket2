import 'package:flutter/material.dart';
import './components/body.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("OTP Verification"),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context),),
      ),
      body: Body(),
    );
  }
}
