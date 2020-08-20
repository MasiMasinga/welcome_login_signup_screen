import 'package:flutter/material.dart';
import 'package:onboarding_screen_practice/components/splash_content.dart';
import 'package:onboarding_screen_practice/constants.dart';
import 'package:onboarding_screen_practice/size_config.dart';

import 'default_button.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      'text': "Welcome To Sample Screen, Let's Shop!",
      'image': 'assets/images/splash_1.png',
    },
    {
      'text': "We Help People Connect With Store \nAround South Africa",
      'image': 'assets/images/splash_2.png',
    },
    {
      'text': "We Show The Easy Way To Shop. \nJust Stay At Home With Us",
      'image': 'assets/images/splash_3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
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
                    image: splashData[index]['image'],
                    text: splashData[index]['text'],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D808),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


