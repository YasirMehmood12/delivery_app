import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';

class CompletedScreen extends StatefulWidget {

  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  String selectiveItem1  = 'Weekly';
  List listItem1 = [
    "Weekly",
    "Monthly",
    "daily",
  ];

  String selectiveItem2  = '1';
  List listItem2 = [
    "1"
    "2"
    "3",
    "4",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        foregroundColor: blackColor,
        backgroundColor: whiteColor,
        title: const CustomText(text: 'Completed  orders', fontSize: 19),
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
            10.heightBox,
            /// today and drop button
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(text: 'Today',fontSize: 20,color: darkLiteColor),
                Container(
                  height: 35, width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: yellowColor),
                  child: DropdownButton(
                    padding: const EdgeInsets.only(left: 10),
                    value: selectiveItem1,
                    dropdownColor: greyColor,
                    icon: const Icon(Icons.arrow_drop_down,color: whiteColor),
                    items: listItem1.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                          child: CustomText(text: valueItem,color: whiteColor,));
                     }).toList(),
                    onChanged: (value1) {
                      setState(() {
                        selectiveItem1 = value1 as String;
                      });
                    },
                      ),
                )
              ],
            ),
            /// list view builder
            SizedBox(
              height: 215,width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor),
                        child: const ListTile(
                          leading: CircleAvatar(radius: 20,backgroundImage: AssetImage(photo)),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(text: 'Aleksandr V.'),
                                  CustomText(text: 'Delivered'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(text: 'Cash on delivery',color: liteGreyColor),
                                  CustomText(text: '24.07.22 12:30',color: liteGreyColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),),
            ),
            /// yesterday and drop button
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(text: 'Yesterday',fontSize: 20,color: darkLiteColor),
                Container(
                  height: 35, width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: yellowColor),
                  child: const Center(
                     child: CustomText(text: 'See All',color: whiteColor),
                  ),
                )
              ],
            ),
            /// list view builder
            SizedBox(
              height: 140,width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor),
                        child: const ListTile(
                          leading: CircleAvatar(radius: 20,backgroundImage: AssetImage(photo)),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(text: 'Aleksandr V.'),
                                  CustomText(text: 'Delivered'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(text: 'Cash on delivery',color: liteGreyColor),
                                  CustomText(text: '24.07.22 12:30',color: liteGreyColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),),
            ),
            ///left and right text
             Container(
               height: 130,width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: yellowColor),
               child: Row(
                children: [
                  15.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: 60,width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor
                      ),
                      child: const Center(child: CustomText(
                        text: '76',fontSize: 24,
                      )),),
                      5.heightBox,
                      const CustomText(text: '\t\t Order\ncomplete',color: whiteColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 140,
                    child: VerticalDivider(
                      indent: 5,
                      endIndent: 5,
                      width: 40,
                      color: blackColor
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: 50,width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor
                        ),
                        child: const Center(child: CustomText(
                          text: '\$77,66632',fontSize: 18,
                        )),),
                      5.heightBox,
                      const CustomText(text: 'Today earning',color: whiteColor,fontSize: 15,
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      5.heightBox,
                      Container(
                        height: 25, width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: liteBlackColor),
                      ),
                    ],
                  ),
                  5.widthBox
                ],),
             ),
          ],
        ),
      ),
    );
  }
}
