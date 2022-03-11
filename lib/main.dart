import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';


void  main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    title: "Form",

    home: HomePage(),
  

  initialRoute: 'home',
  routes:{
    'home': (context) => HomePage(),
    'login': (context) => LoginPage(),
  }
  ),
  
  );
}






