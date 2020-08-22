import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tammu_finance/constants/color_constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Image.asset(
          image,
          height: getProportionateScreenHeight(400),
          width: getProportionateScreenWidth(335),
        ),

        Padding(
          padding: EdgeInsets.only( top: 2),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),



      ],
    );
  }
}