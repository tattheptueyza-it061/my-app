

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configs/app_route.dart';

class TitlePage extends StatefulWidget{
  @override
  _TitlePageState createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage>
    with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0XFFF138D75),
                Color(0XFFF17A589),
                Color(0XFFF138D75),
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox.fromSize(
                size: Size.square(70),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png',scale: 2,),
                  // Center(
                  //   child: Container(
                  //     child: GestureDetector(
                  //       child: Text(
                  //         'WORK TIME',
                  //         style: TextStyle(
                  //             fontSize: 35,
                  //             fontWeight: FontWeight.w400,
                  //             letterSpacing: 19.5,
                  //             color: Colors.white),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),

              SizedBox.fromSize(
                size: Size.square(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      child: GestureDetector(
                        child: Text(
                          'WORK TIME',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 19.5,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox.fromSize(
                size: Size.square(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      child: GestureDetector(
                        child: Text(
                          'The only way to do great work is to love what you do',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.5,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox.fromSize(
                size: Size.square(90),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoute.LoginPageScreenRoute),
                child: Card(
                  color: Color(0XFFF0E6655),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(75),
                    ),
                  ),
                  child: const SizedBox(
                    width: 320,
                    height: 70,
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 24, color: Color(0XFFFFBFCFC)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size.square(20),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoute.SignupPageScreenRoute),
                child: Card(
                  color: Color(0XFFFFBFCFC),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(75),
                    ),
                  ),
                  child: const SizedBox(
                    width: 320,
                    height: 70,
                    child: Center(
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(fontSize: 24, color: Color(0XFFF0E6655)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}