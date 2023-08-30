import 'package:flutter/material.dart';

import '../sign_in/sign_in_screen.dart';
import './components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Login Success"),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.popAndPushNamed(context, SignInScreen.routeName);}),
      ),
      body: Body(),
    );
  }
}
