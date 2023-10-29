import 'package:delivery_app/pages/auth_screen/phone_number.dart';
import 'package:flutter/material.dart';
import '../../custom_widgets/custom_text.dart';
import 'email.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Login Account",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 5),
                const CustomText(
                  text: "Hello, welcome back",
                  color: Color(0xff595959),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffEDEDED)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                    child: TabBar(
                        dividerColor:const Color(0xffEDEDED) ,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor:Colors.black87,
                        labelColor: Colors.black,
                        labelStyle: const TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w500
                        ),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        tabs: const [
                          Tab(text: "Phone Number"),
                          Tab(text: "Email"),
                        ]),
                  ),
                ),
                SizedBox(height: 23),
                const Expanded(
                  child: TabBarView(children: [
                    PhoneNumber(),
                    Email()
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}