import 'package:flutter/material.dart';
import 'package:marcket2/constants.dart';
import 'package:marcket2/screens/sign_in/sign_in_screen.dart';

import 'package:marcket2/screens/splash/components/splash_content.dart';
import 'package:marcket2/size_config.dart';

import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        text: splashData[index]["text"] ??
                            "Welcome to Tokoto, Let’s shop!",
                        // ?? 오류 : 문자열 대체값 적용
                        image: splashData[index]["image"] ??
                            "assets/images/splash_1.png",
                      ))),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  // ?? Widget하는 이유 : 리스트 내부의 요소들이 위젯타입임을 명시
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashData.length,
                          (index) => buildDot(index: index))),
                  Spacer(
                    flex: 2,
                  ),
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot({required int index}) {
    // ?? index 넣는 이유
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
