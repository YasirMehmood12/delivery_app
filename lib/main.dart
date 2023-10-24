import 'package:delivery_app/home/out_of_delivery_screen.dart';
import 'package:flutter/material.dart';
import 'home/navi_screen.dart';

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
      // home: NaviScreen()
      home: OutOfDeliveryScreen(),
    );
  }
}