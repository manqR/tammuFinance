import 'package:flutter/material.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'package:tammu_finance/screens/home_screen.dart';
import 'routes.dart';
import 'screens/splash/splash_screen.dart';
//
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//          accentColor: kAccentColor,
//          backgroundColor: kBackgroundColor
//      ),
//      home: HomeScreen(),
//    );
//  }
//}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: kAccentColor,
          backgroundColor: kBackgroundColor
      ),
       home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}