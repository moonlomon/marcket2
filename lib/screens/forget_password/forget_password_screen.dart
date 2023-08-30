import 'package:flutter/material.dart';
import '../sign_in/sign_in_screen.dart';
import './components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot Password"), centerTitle: true,
    automaticallyImplyLeading: false,
    leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);})
      ),
      body: Body(),
    );
  }
}



