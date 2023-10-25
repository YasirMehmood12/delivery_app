import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/mybutton.dart';

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
            IconButton(
              onPressed: () {},
              icon: Container(
                height: 29,
                width: 29,
                decoration: const BoxDecoration(
                    color: yellowColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(notification))),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Container(
                height: 29,
                width: 29,
                decoration: const BoxDecoration(
                    color: yellowColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(profile))),
              ),
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
                    onTap: () {},
                    text: 'View deliveries',color: whiteColor,fontSize: 20),
              )
        ]));
  }
}
