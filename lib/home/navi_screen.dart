import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/home/dashboard_screen.dart';
import 'package:delivery_app/home/order_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NaviScreen extends StatefulWidget {
  const NaviScreen({Key? key}) : super(key: key);

  @override
  State<NaviScreen> createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  int _selectedIndex = 0;
  final List<Widget> _className2 = [
    const DashboardScreen(),
    const OrderTabBarScreen(),
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
          elevation: 0,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: liteBlackColor,
          items:[
            BottomNavigationBarItem(
              activeIcon:Image.asset(home,color: yellowColor),
                icon: Image.asset(home),
                label: "Home"),
            BottomNavigationBarItem(
              activeIcon: Image.asset(newOrder,color: yellowColor),
                icon: Image.asset(newOrder),
                label: "New order"),
            BottomNavigationBarItem(
                activeIcon: Image.asset(onGoing,color: yellowColor),
                icon: Image.asset(onGoing),
                label: "On-going"),
            BottomNavigationBarItem(
                activeIcon: Image.asset(delivered,color: yellowColor),
                icon: Image.asset(delivered),
                label: "Delivered "),
            BottomNavigationBarItem(
                activeIcon: Image.asset(wallet,color: yellowColor),
                icon: Image.asset(wallet),
                label: "Wallet"),
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
