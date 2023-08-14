import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcket2/constants.dart';
import 'package:marcket2/routs.dart';
import 'package:marcket2/screens/splash/splash_screen.dart';
import 'package:marcket2/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        // home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        // 첫 화면 => 홈 역할
        routes: routes, // 라우트 딕셔너리를 지정
      ),
    );
  }


}
