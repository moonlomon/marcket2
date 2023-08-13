import 'package:flutter/material.dart';
import 'package:marcket2/size_config.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/spllash"; // ??static의 의미
  @override
  Widget build(BuildContext context) {
    // ??사이즈컨피그를 가져와야 설정값을 설정 가능
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
