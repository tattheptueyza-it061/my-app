import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/src/screen/login_page_screen.dart';
import 'package:untitled/src/screen/title_page.dart';

import '../configs/app_route.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyan),
      // home: HomeGuestPage(),
      home: TitlePage(),
      routes: AppRoute().getAll,
    );
  }
} //end class