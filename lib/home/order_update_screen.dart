import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              /// start text
              const CustomText(
                textAlign: TextAlign.center,
                  text: 'Write the signer name and add a signature.',fontSize: 19),
              20.heightBox,
              /// image signature
              Container(
                height: 150, width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(image: AssetImage(signature))),
              ),
              20.heightBox,
              /// text field
              Container(
                height: 50,width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: whiteColor,),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Customer name',

                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              20.heightBox,
              ///container signature and text
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(text: 'Signature',fontWeight: FontWeight.w400,fontSize: 18),
                    5.heightBox,
                    Container(
                      height: 200, width: MediaQuery.of(context).size.width*0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: liteWhiteColor,
                          image: const DecorationImage(image: AssetImage(sign))
                      ),
                    ),
                  ],
                ),
              ),
              ///last two buttons
              50.heightBox,
              Row(
                children: [
                  Expanded(
                    child: MyButton(
                      height: 50,
                      border: Border.all(color: fulRedColor),
                      circularRadius: BorderRadius.circular(15),
                      text: 'Close',
                      onTap: () {},
                      fontSize: 13,color: fulRedColor,
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
                      onTap: () {},
                      fontSize: 13,color: whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(left: 50,right: 50),
          height: 50,
          color: Colors.red,
        ),
      ),
    );
  }
}
