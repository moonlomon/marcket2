import 'package:flutter/material.dart';
import './components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  static String routeName = "/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 메인에서 앱바의 속성을 설정
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up"),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
      ),
      body: Body(),
    );;
  }
}
