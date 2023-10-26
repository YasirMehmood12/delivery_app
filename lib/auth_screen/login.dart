import 'package:delivery_app/auth_screen/email.dart';
import 'package:delivery_app/auth_screen/phone_number.dart';
import 'package:delivery_app/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../custom_widgets/custom_text.dart';

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
                CustomText(
                  text: "Login Account",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                5.heightBox,
                CustomText(
                  text: "Hello, welcome back",
                  color: Color(0xff595959),
                  fontWeight: FontWeight.bold,
                ),
                20.heightBox,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffEDEDED)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TabBar(
                        dividerColor:Color(0xffEDEDED) ,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor:Colors.black87,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w500
                        ),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        tabs: const [
                          Tab(
                            text: "Phone Number",

                          ),
                          Tab(
                            text: "Email",
                          ),
                        ]),
                  ),
                ),
                23.heightBox,
                Expanded(
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