import 'package:delivery_app/auth_screen/login.dart';
import 'package:delivery_app/auth_screen/register_page.dart';
import 'package:delivery_app/pages/home/navi_screen.dart';
import 'package:flutter/material.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}