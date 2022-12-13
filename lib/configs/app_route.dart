import 'package:flutter/material.dart';
import 'package:untitled/src/screen/title_page.dart';

import '../src/screen/home_page_screen.dart';
import '../src/screen/login_page_screen.dart';
import '../src/screen/signup_page_screen.dart';




class AppRoute {
  static const LoginPageScreenRoute = "loginscreen";
  static const SignupPageScreenRoute = "signup";
  static const TitlePageRoute = "title";
  static const HomePageScreenRoute = "home";

  final _route = <String, WidgetBuilder>{
    LoginPageScreenRoute: (context) => LoginPageScreen(),
    TitlePageRoute: (context) => TitlePage(),
    HomePageScreenRoute: (context) => HomePageScreen(),
    SignupPageScreenRoute: (context) => SignupPageScreen(),
  };

  get getAll => _route;
}