import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder inputDecorationTheme = OutlineInputBorder( // *기본 테투리 설정
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Colors.black),
      gapPadding: 10);

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20), // *라벨, 힌트 위치 설정
    enabledBorder: inputDecorationTheme,
    focusedBorder: inputDecorationTheme,
    border: inputDecorationTheme
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF8B8B8B),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.light, // 밝은 상태바
        statusBarColor: Colors.white, // 상태바 배경색
        statusBarIconBrightness: Brightness.dark, // 상태바 아이콘 색상
      ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyLarge: TextStyle(color: kTextColor), // bodyText1의 대체속성
    bodyMedium: TextStyle(color: kTextColor), // bodyText2의 대체속성
  );
}