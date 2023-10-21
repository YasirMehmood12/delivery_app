import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:flutter/material.dart';

class NaviScreen extends StatefulWidget {
  const NaviScreen({Key? key}) : super(key: key);

  @override
  State<NaviScreen> createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  int _selectedIndex = 0;
  final List<Widget> _className2 =[
    const Text('data1'),
    const Text('data2'),
    const Text('data3'),
    const Text('data4'),
    const Text('data5'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _className2.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(

            backgroundColor: whiteColor,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: yellowColor,
            items:[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),label: "Home"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.list),label: "New order"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.autorenew),label: "On-going"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list),label: "Delivered"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),label: "Wallet"),
            ],
            currentIndex: _selectedIndex,
            onTap: ( int index) {
              setState(() {
                _selectedIndex = index;
              });
            },)
      ),
    );
  }
}