import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../custom_widgets/mybutton.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({super.key});

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1.0,width: double.infinity,
          color: Colors.blue,
          child: Stack(
            children: [
              Container(
              height: MediaQuery.of(context).size.height*0.8,width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(mapImage),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  /// text field  amd row icons buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                    child: Container(
                      height: 60,width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: greyColor,fontSize: 16),
                                suffixIcon: Icon(Icons.search,color: greyColor,)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  /// images button
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,width: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(pen),fit: BoxFit.fill)
                            ),
                              )),
                      10.widthBox,
                      InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,width: 30,
                            decoration: const BoxDecoration(
                                image: DecorationImage(image: AssetImage(navigateCirle),fit: BoxFit.fill)
                            ),
                          )),
                      10.widthBox,
                    ],
                  ),
                  60.heightBox
                ],
              ),
            ),
              /// bottom container

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 170,width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),),
                    color: whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        10.heightBox,
                        Container(
                          height: 3,width: 150,
                          color: liteWhiteColor,
                        ),
                        15.heightBox,
                        Container(
                          height: 50,width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              const BoxShadow(
                                offset: Offset(0, 1),
                                color: liteGreyColor,
                                blurRadius: 1)
                            ],
                            color: liteWhite2Color),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Mark your coverage area',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        30.heightBox,
                        MyButton(
                          onTap: () {},
                          height: 50,
                          circularRadius: BorderRadius.circular(10),
                          child: CustomText(
                            text: "Update",fontSize: 20,  color: whiteColor,),
                          containerColor: yellowColor,

                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
