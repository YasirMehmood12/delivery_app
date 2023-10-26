import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/pages/new_order_pages/transactions_screen.dart';
import 'package:delivery_app/pages/profile_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import '../delivered_pages/completed_screen.dart';
import '../new_order_pages/order_screen.dart';
import '../on_going_pages/on-going_screen.dart';
import 'dashboard_screen.dart';

class NaviScreen extends StatefulWidget {
  const NaviScreen({Key? key}) : super(key: key);

  @override
  State<NaviScreen> createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  int _selectedIndex = 0;
  final List<Widget> _className2 = [
    const DashboardScreen(),
    const OrderScreen(),
    const OnGoingScreen(),
    const CompletedScreen(),
    const TransactionsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _className2.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            color: liteBlackColor
          ),
          items: [
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
      ]),
    );
  }
}
