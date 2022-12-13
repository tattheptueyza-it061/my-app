
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/configs/app_route.dart';

import '../../main.dart';

class LoginPageScreen extends StatefulWidget {
  @override
  _LoginPageScreenState createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen>
    with TickerProviderStateMixin {
  bool isHidden = false;

  late int selectedRadio;
  late int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  var _passwordController = TextEditingController();

  var _usernameController = TextEditingController();

  @override
  void dispose() {
    _usernameController?.dispose();
    _passwordController?.dispose();
    super.dispose();
  }

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
                size: Size.square(150),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      child: GestureDetector(
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 10.5,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox.fromSize(
                size: Size.square(15),
              ),
              Center(
                child: Container(
                  child: GestureDetector(
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 4.5,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size.square(50),
              ),
              // Card(
              //   color: Color(0XFFF0E6655),
              //   elevation: 3,
              //   shape: RoundedRectangleBorder(
              //     side: BorderSide(
              //       color: Theme.of(context).colorScheme.outline,
              //     ),
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(75),
              //     ),
              //   ),
              //   child: const SizedBox(
              //     width: 500,
              //     height: 70,
              //     child: Center(
              //       child: Text(
              //         'TESTTTTTT',
              //         style: TextStyle(fontSize: 24, color: Color(0XFFFFBFCFC)),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox.fromSize(
                size: Size.square(3),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Color(0XFFFFBFCFC),
                elevation: 20,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(75),
                  ),
                ),
                // child: const SizedBox(
                //   width: 500,
                //   height: 70,
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _usernameController,
                      obscureText: isHidden,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: 'xxxxxxxx@gmail.com',
                        icon: Icon(
                          Icons.person,
                          size: 30,
                        ),
                        suffix: IconButton(
                          icon: isHidden
                              ? Icon(
                                  Icons.visibility_off,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.visibility,
                                  size: 20,
                                ),
                          onPressed: togglePasswordVisibility,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Color(0XFFFFBFCFC),

                elevation: 20,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(75),
                  ),
                ),
                // child: const SizedBox(
                //   width: 500,
                //   height: 70,
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _passwordController,
                      obscureText: isHidden,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: '123456789',
                        icon: Icon(
                          Icons.key,
                          size: 30,
                        ),
                        suffix: IconButton(
                          icon: isHidden
                              ? Icon(
                                  Icons.visibility_off,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.visibility,
                                  size: 20,
                                ),
                          onPressed: togglePasswordVisibility,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: selectedRadio,
                    onChanged: (val) {
                      print("Radio $val");
                      setSelectedRadio(val = 1);
                    },
                  ),
                  Text('Rememberme'),
                  SizedBox(
                    width: 90,
                  ),
                  Text('Forgetpassword?'),
                ],
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoute.HomePageScreenRoute),
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
                    width: 300,
                    height: 50,
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 24, color: Color(0XFFFFBFCFC)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14,),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoute.LoginPageScreenRoute),
                child: Center(
                  child: Text(
                    'Do not have an account? Sign Up ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 3.5,
                        color: Colors.white),
                  ),
                ),
                ),
              SizedBox(height: 14,),

              SizedBox(height: 20,
                width: 350,
                child: Divider(
                  color: Colors.white,
                  thickness: 0.7,
                ),),
              GestureDetector(
                onTap: () => {},
                child: Center(
                  child: Text(
                    'or',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 3.5,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}
