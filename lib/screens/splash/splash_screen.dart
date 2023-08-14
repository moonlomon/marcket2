import 'package:flutter/material.dart';
import 'package:marcket2/size_config.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  //#static : 인스턴스 선언 없이 SplashScreen.routeName 이런식으로 바로 접근 가능
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    // ??사이즈컨피그를 가져와야 설정값을 설정 가능
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
