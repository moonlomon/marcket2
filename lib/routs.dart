import 'package:flutter/widgets.dart';
import 'package:marcket2/screens/complete_profile/compleate_profile_screen.dart';
import 'package:marcket2/screens/forget_password/forget_password_screen.dart';
import 'package:marcket2/screens/login_success/login_success_screen.dart';
import 'package:marcket2/screens/sign_in/sign_in_screen.dart';
import 'package:marcket2/screens/sign_up/sign_up_screen.dart';
import 'package:marcket2/screens/splash/splash_screen.dart';

// 이름 라우트를 사용하여 페이지 적용
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(), // "/spllash"라우트를 명령하면 SplashScreen위젯으로 이동
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
};