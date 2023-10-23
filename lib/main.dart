import 'package:delivery_app/auth_screen/change_password.dart';
import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/home/navi_screen.dart';
import 'package:flutter/material.dart';

import 'auth_screen/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     //home: const NaviScreen()
     // home: LoginScreen(),
      home: ChangePasswordScreen(),
    );
  }
}