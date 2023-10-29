import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:delivery_app/pages/new_order_pages/transactions_screen.dart';
import 'package:delivery_app/pages/profile_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import '../../custom_widgets/icon_button.dart';
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
              MyIconButton(
                onPressed: () {},
                color: yellowColor,
                image: const AssetImage(notification),
              ),
              MyIconButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));},
                  color: yellowColor,
                  image: const AssetImage(profile))
            ],
          ),
            SizedBox(height: 32),
            /// wallet text button
              Container(
            height: 60,width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TransactionsScreen(),));
              },
              leading: Image.asset(redWallet),
              title: const CustomText(text: "6,730 \$"),
              trailing: GestureDetector(
                   onTap: () {},
                   child: const Icon(
                     Icons.arrow_forward_ios_outlined,
                     size: 20,color: liteGreyColor,
                   )),
            )
          ),
            /// two buttons
              SizedBox(height: 16),
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