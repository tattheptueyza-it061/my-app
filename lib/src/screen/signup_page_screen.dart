

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configs/app_route.dart';

class SignupPageScreen extends StatefulWidget {
  @override
  _SignupPageScreenState createState() => _SignupPageScreenState();
}

class _SignupPageScreenState extends State<SignupPageScreen>
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
              Center(
                child: Container(
                  child: GestureDetector(
                    child: Text(
                      'Welcome Register',
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 19.5,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size.square(35),
              ),
              Center(
                child: Container(
                  child: GestureDetector(
                    child: Text(
                      'Sigup to your account',
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
                size: Size.square(90),
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
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 190),
                color: Color(0XFFFFBFCFC),
                elevation: 300,
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
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 190),
                color: Color(0XFFFFBFCFC),

                elevation: 5,
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
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 190),
                color: Color(0XFFFFBFCFC),

                elevation: 5,
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
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 190),
                color: Color(0XFFFFBFCFC),

                elevation: 5,
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
                        labelText: 'Telephone',
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
              SizedBox(height: 20,),
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
                    width: 500,
                    height: 70,
                    child: Center(
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 24, color: Color(0XFFFFBFCFC)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14,),
              SizedBox(height: 20,
                width: 550,
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),),
              SizedBox(height: 14,),
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
