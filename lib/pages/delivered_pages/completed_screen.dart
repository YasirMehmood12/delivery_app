import 'package:delivery_app/custom_widgets/icon_button.dart';
import 'package:delivery_app/model/delivered_model.dart';
import 'package:flutter/material.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';
import '../profile_pages/profile_screen.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  String selectiveItem1 = 'Weekly';
  List listItem1 = [
    "Weekly",
    "Monthly",
    "daily",
  ];

  String selectiveItem2 = 'Today';
  List listItem2 = [
    "Today",
    "Tomorrow",
    "Yesterday",
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
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),

            /// today and drop button
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                    text: 'Today', fontSize: 20, color: darkLiteColor),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: yellowColor),
                  child: DropdownButton(
                    padding: const EdgeInsets.only(left: 10),
                    value: selectiveItem1,
                    dropdownColor: greyColor,
                    icon: const Icon(Icons.arrow_drop_down, color: whiteColor),
                    items: listItem1.map((valueItem) {
                      return DropdownMenuItem(
                          value: valueItem,
                          child: CustomText(
                            text: valueItem,
                            color: whiteColor,
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectiveItem1 = newValue as String;
                      });
                    },
                  ),
                )
              ],
            ),

            /// list view builder
            SizedBox(
              height: 215,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: toDayModelList.length,
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
                        child: ListTile(
                          leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: toDayModelList[index].image),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                      text: toDayModelList[index].leftText),
                                  CustomText(
                                      text: toDayModelList[index].rightText),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                      text: toDayModelList[index].leftText2,
                                      color: liteGreyColor),
                                  CustomText(
                                      text: toDayModelList[index].leftText2,
                                      color: liteGreyColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            /// yesterday and drop button
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                    text: 'Yesterday', fontSize: 20, color: darkLiteColor),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: yellowColor),
                  child: const Center(
                    child: CustomText(text: 'See All', color: whiteColor),
                  ),
                )
              ],
            ),

            /// list view builder
            SizedBox(
              height: 140,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: yesTerDayModelList.length,
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
                        child: ListTile(
                          leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: yesTerDayModelList[index].image),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                      text: yesTerDayModelList[index].leftText),
                                  CustomText(
                                      text:
                                          yesTerDayModelList[index].rightText),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                      text: yesTerDayModelList[index].leftText2,
                                      color: liteGreyColor),
                                  CustomText(
                                      text:
                                          yesTerDayModelList[index].rightText2,
                                      color: liteGreyColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            ///left and right text
            SizedBox(height: 10),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: yellowColor),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor),
                        child: const Center(
                            child: CustomText(
                          text: '76',
                          fontSize: 24,
                        )),
                      ),
                      SizedBox(height: 5),
                      const CustomText(
                        text: '\t\t Order\ncomplete',
                        color: whiteColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 140,
                    child: VerticalDivider(
                        indent: 5, endIndent: 5, width: 35, color: blackColor),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor),
                        child: const Center(
                            child: CustomText(
                          text: '\$77,66632',
                          fontSize: 18,
                        )),
                      ),
                      SizedBox(height: 5),
                      const CustomText(
                        text: 'Today earning',
                        color: whiteColor,
                        fontSize: 15,
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: liteBlackColor),
                        child: DropdownButton(
                          padding: const EdgeInsets.only(left: 2),
                          value: selectiveItem2,
                          dropdownColor: greyColor,
                          icon: const Icon(Icons.arrow_drop_down,
                              color: whiteColor),
                          items: listItem2.map((valueItem2) {
                            return DropdownMenuItem(
                                value: valueItem2,
                                child: CustomText(
                                  text: valueItem2,
                                  color: whiteColor,
                                ));
                          }).toList(),
                          onChanged: (newValue2) {
                            setState(() {
                              selectiveItem2 = newValue2 as String;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<dynamic> toDayModelList = [
    ToDayModel(
      image: const AssetImage(photo),
      leftText: 'Aleksandr V.',
      rightText: 'Delivered',
      leftText2: 'Cash on delivery',
      rightText2: '24.07.22 12:30',
    ),
    ToDayModel(
      image: const AssetImage(photo2),
      leftText: 'Aleksandr V.',
      rightText: 'Delivered',
      leftText2: 'Cash on delivery',
      rightText2: '24.07.22 12:30',
    ),
    ToDayModel(
      image: const AssetImage(photo3),
      leftText: 'Aleksandr V.',
      rightText: 'Delivered',
      leftText2: 'Cash on delivery',
      rightText2: '24.07.22 12:30',
    ),
  ];
  List<dynamic> yesTerDayModelList = [
    YesTerDayModel(
      image: const AssetImage(photo4),
      leftText: 'Aleksandr V.',
      rightText: 'Delivered',
      leftText2: 'Cash on delivery',
      rightText2: '24.07.22 12:30',
    ),
    YesTerDayModel(
      image: const AssetImage(photo5),
      leftText: 'Aleksandr V.',
      rightText: 'Delivered',
      leftText2: 'Cash on delivery',
      rightText2: '24.07.22 12:30',
    ),
  ];
}
