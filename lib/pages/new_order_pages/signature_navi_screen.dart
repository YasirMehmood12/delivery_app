import 'package:delivery_app/pages/new_order_pages/delivery_success_screen.dart';
import 'package:delivery_app/pages/new_order_pages/phone_screen_tab.dart';
import 'package:delivery_app/pages/new_order_pages/qrcode_screen_tab.dart';
import 'package:delivery_app/pages/new_order_pages/signature_screen_tab.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';

import '../../custom_widgets/icon_button.dart';
import '../profile_pages/profile_screen.dart';

class SignatureNaviScreen extends StatefulWidget {
  const SignatureNaviScreen({super.key});

  @override
  State<SignatureNaviScreen> createState() => _SignatureNaviScreenState();
}

class _SignatureNaviScreenState extends State<SignatureNaviScreen> {
  String selectedType = "Signature";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        foregroundColor: blackColor,
        backgroundColor: whiteColor,
        title: const CustomText(text: '#758655', fontSize: 19),
        actions: [
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
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///last two buttons
              Container(
                height: 580,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: whiteColor,
                ),
                child: Column(
                  children: [
                    const Expanded(
                      child: TabBarView(children: [
                        QRCodeScreenTab(),
                        PhoneScreenTab(),
                        SignatureScreenTab()
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: white3Color),
                        child: TabBar(
                            indicatorColor: Colors.yellow,
                            indicatorSize: TabBarIndicatorSize.label,
                            unselectedLabelColor: greyColor,
                            labelColor: Colors.black,
                            tabs: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(qrCode))),
                                  ),
                                  const CustomText(
                                    text: 'QR Code',
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(camera))),
                                  ),
                                  const CustomText(text: 'Phone'),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(signatureSign))),
                                  ),
                                   const CustomText(text: 'Signature',)
                                    //       Container(
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              25.heightBox,
              Row(
                children: [
                  Expanded(
                    child: MyButton(
                      height: 50,
                      border: Border.all(color: fulRedColor),
                      circularRadius: BorderRadius.circular(15),
                      text: 'Close',
                      onTap: () {
                        Navigator.pop(context);
                      },
                      fontSize: 13,
                      color: fulRedColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  20.widthBox,
                  Expanded(
                    child: MyButton(
                      height: 50,
                      containerColor: yellowColor,
                      circularRadius: BorderRadius.circular(15),
                      text: 'Done',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DeliverySuccessScreen(),));
                      },
                      fontSize: 13,
                      color: whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
