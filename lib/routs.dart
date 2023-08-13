// import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:marcket2/screens/splash_screen.dart'; // ??라우트 기본 임포트

// 이름 라우트를 사용하여 페이지 적용
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
};