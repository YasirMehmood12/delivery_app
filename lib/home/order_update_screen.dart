import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';

class OrderUpdateScreen extends StatefulWidget {
  const OrderUpdateScreen({super.key});

  @override
  State<OrderUpdateScreen> createState() => _OrderUpdateScreenState();
}

class _OrderUpdateScreenState extends State<OrderUpdateScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            20.heightBox,
            const CustomText(text: 'where did you leave the order?',fontSize: 19),
            20.heightBox,
            ///container signator
            Container(
              height: 250, width: 270,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: liteWhiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10,top: 10),
                    child: CustomText(text: 'Note',color: greyColor,fontSize: 19),
                  ),

                ],
              ),
            ),

            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: MyButton(
                    containerColor: yellowColor,
                    circularRadius: BorderRadius.circular(15),
                    text: 'Close',
                    onTap: () {},
                    fontSize: 13,color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                5.widthBox,
                Expanded(
                  child: MyButton(
                    containerColor: yellowColor,
                      circularRadius: BorderRadius.circular(15),
                    text: 'Done',
                    onTap: () {},
                    fontSize: 13,color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            10.heightBox
          ],
        ),
      ),
    );
  }
}
