import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'package:tammu_finance/constants/style_constant.dart';
import 'package:tammu_finance/screens/home_screen.dart';
import 'components/bezierContainer.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = "/sign_in";
  SignInScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInScreen createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {

  final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(80.0)),
      borderSide: BorderSide(
        color: Colors.transparent,
      )
  );

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: mServiceTitleStyle,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: border,
                  fillColor: Color(0xfff3f3f4),
                  filled: false))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: kGradientColorLogin),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
        child: FittedBox(
          child:  Text(
            'Sign in',
            style: mSplashTitle,

          ),
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Sign in',
          style: mLoginTitle
          ),

    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: -height * .15,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer()),
              Positioned(
                  bottom: -height * .40,
                  left: -MediaQuery.of(context).size.width * .8,
                  child: BezierContainer()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .3),
                      _title(),
                      SizedBox(height: 50),
                      _emailPasswordWidget(),
                      SizedBox(height: 20),
                      _submitButton(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password ?',
                            style: mServiceTitleStyle),
                      ),
                      SizedBox(height: height * .055),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}