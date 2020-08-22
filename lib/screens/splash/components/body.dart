import 'package:flutter/material.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'package:tammu_finance/constants/style_constant.dart';
import 'package:tammu_finance/screens/sign_in/sign_in_screen.dart';
import 'package:tammu_finance/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import 'package:tammu_finance/components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tammu Roastery, \ndont worry about running out of coffee, you can order here",
      "image": "assets/images/order.jpg"
    },
    {
      "text":"Open your store and manage from this app",
      "image": "assets/images/shop.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(

          children: <Widget>[
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
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(

              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: ButtonTheme(
                        buttonColor: kRedColor,
                        minWidth: 250.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignInScreen.routeName);
                          },
                          child:
                          Text(
                            'Continue',
                            style: mSplashTitle,
                          ),
                        ),
                      ),
                    ),

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
        color: currentPage == index ? kRedColor : kGreyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}