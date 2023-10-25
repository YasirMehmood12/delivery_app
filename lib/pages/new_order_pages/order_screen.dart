import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'inbox_tabbar_screen.dart';
import 'outgoing_tabbar_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
          length: 2,
          child: SingleChildScrollView(
           child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            /// dashboard, noti and profile button
              Row(
            children: [
              const CustomText(text: 'Orders', fontSize: 26),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 29,
                  width: 29,
                  decoration: const BoxDecoration(
                      color: yellowColor,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(notification))),
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 29,
                  width: 29,
                  decoration: const BoxDecoration(
                      color: yellowColor,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(profile))),
                ),
              ),
              13.widthBox,
            ],
          ),
            32.heightBox,
            /// wallet text button
              Container(
            height: 60,width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
               12.widthBox,
                Image.asset(redWallet),
                8.widthBox,
                const CustomText(text: "6,730 \$"),
                const Spacer(),
                GestureDetector(
                    onTap: () {
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,color: liteGreyColor,
                    )),
              ],
            ),
          ),
            /// two buttons
              16.heightBox,
              Container(
                height: 725,
               width: double.infinity,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: whiteColor),
                child: Column(
                children: [
                 Padding(
                  padding: const EdgeInsets.all(5),
                    child: TabBar(
                      unselectedLabelColor: blackColor,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: yellowColor),
                      labelColor: whiteColor,
                        tabs: const [
                      Tab(text: "Outgoing"),
                      Tab(text: "Inbox"),
                    ])),
                 const Expanded(
                    child: TabBarView(children: [
                      OutGoingTabbarScreen(),
                      InboxTabbarScreen()
                    ]),
                  )
              ],
            ),
          ),
      ]),
    )),
   ));
  }
}