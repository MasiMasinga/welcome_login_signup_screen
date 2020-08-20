import 'package:flutter/material.dart';
import 'package:onboarding_screen_practice/components/body.dart';
import 'package:onboarding_screen_practice/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    // Call It On Your Starting Screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
