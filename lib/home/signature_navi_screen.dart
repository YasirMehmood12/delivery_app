
import 'package:delivery_app/home/signature_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';

class OrderUpdateScreen extends StatefulWidget {
  const OrderUpdateScreen({super.key});

  @override
  State<OrderUpdateScreen> createState() => _OrderUpdateScreenState();
}

class _OrderUpdateScreenState extends State<OrderUpdateScreen> {

  int _selectedIndex = 2;
  final List<Widget> _className2 = [
    const Center(child: Text('data3')),
    const Center(child: Text('data2')),
    const SignatureScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _className2.elementAt(_selectedIndex),

    );
  }
}
