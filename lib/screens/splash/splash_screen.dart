import 'package:flutter/material.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'components/body.dart';
import 'package:tammu_finance/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      backgroundColor: kWhiteColor,
    );
  }
}