import 'package:delivery_app/pages/delivered_pages/completed_screen.dart';
import 'package:delivery_app/pages/home/navi_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/icon_button.dart';
import '../../custom_widgets/mybutton.dart';
import '../profile_pages/profile_screen.dart';

class DeliverySuccessScreen extends StatelessWidget {
  const DeliverySuccessScreen({super.key});

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
              },
              color: yellowColor,
              image: const AssetImage(notification),
            ),
          ],
        ),
        body: Column(
            children: [
          100.heightBox,
          Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(loveHand)))),
          10.heightBox,
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(text: 'Thank You',fontSize: 22,),
              CustomText(text: 'Your next delivery',
                color: liteBlackColor,fontSize: 16,),
              CustomText(
                text: '905,al nahdha,dubia UAE',
                color: liteBlackColor,fontSize: 20,),
            ],
          ),
              100.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: MyButton(
                    containerColor: yellowColor,
                    circularRadius: BorderRadius.circular(15),
                    height: 50,
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NaviScreen(),));
                    },
                    child: const CustomText(
                        text: 'View deliveries',color: whiteColor,fontSize: 20
                    ),),
              )
        ]));
  }
}