import 'package:flutter/widgets.dart';
import 'package:tammu_finance/screens/coffee_menu/coffee_menu_screen.dart';
import 'package:tammu_finance/screens/forgot_password/forgot_password_screen.dart';
import 'package:tammu_finance/screens/home_screen.dart';
import 'package:tammu_finance/screens/login_success/login_success_screen.dart';
import 'package:tammu_finance/screens/roasting_menu/WikipediaExplorer.dart';
import 'package:tammu_finance/screens/sign_in/sign_in_screen.dart';
import 'package:tammu_finance/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CoffeeMenu.routeName: (context) => CoffeeMenu(),
  WikipediaExplorer.routeName: (context) => WikipediaExplorer(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};