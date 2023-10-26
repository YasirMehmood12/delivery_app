import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:delivery_app/model/dashboard_listview_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../custom_widgets/icon_button.dart';
import '../profile_pages/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// dashboard, noti and profile button
              Row(
                children: [
                  const CustomText(text:'Dashboard',fontSize: 26),
                  const Spacer(),
                  MyIconButton(
                    onPressed: () {},
                    color: yellowColor,
                    image: const AssetImage(notification),
                  ),
                  MyIconButton(
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));},
                      color: yellowColor,
                      image: const AssetImage(profile)),
                ],
              ),
              ///left text and right text
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Today's income",fontSize: 16),
                    CustomText(text: "\$87836",fontSize: 24,fontWeight: FontWeight.w500),
                    CustomText(text: "34 order",fontSize: 11),
                  ],
                ),
                SizedBox(
                    height: 90,
                    child: VerticalDivider(
                      indent: 10,
                      endIndent: 18,
                      width: 60,
                      color: Colors.grey,
                    ),
                  ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "weekly income",fontSize: 16),
                      CustomText(text: "\$8723836",fontSize: 24,fontWeight: FontWeight.w500),
                      CustomText(text: "76 order",fontSize: 11),
                    ],
                  ),
              ],),
              /// right small button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 23,width: 83,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: yellowColor),
                      child: const Center(child: CustomText(text: "See All",color: whiteColor,fontSize: 11,)),
                    ),
                  )
                ],
              ),
              const CustomText(text: 'Sales Figures',fontSize: 16,fontWeight: FontWeight.w500),
              17.heightBox,
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                    child: Row(
                      children: [
                        CircleAvatar(radius: 5,
                          backgroundColor: blueColor,),
                        SizedBox(width: 5),
                        CustomText(text: 'Order received'),
                      ],
                    ),
                  ),
                  22.heightBox,
                  SizedBox(
                    height: 20,
                    child: Row(
                      children: [
                        const CircleAvatar(radius: 5,
                          backgroundColor: tealColor,),
                        5.heightBox,
                        const CustomText(text: 'sales'),
                      ],
                    ),
                  ),
                ],
              ),
              17.heightBox,
              /// text and diagram
              Container(
                height: 260,width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(text: 'Total order',fontSize: 20,color: liteGreyColor),
                        const CustomText(text: '5248',fontSize: 18,fontWeight: FontWeight.w500),
                        Row(
                          children: [
                            Image.asset(numbers,height: 150,),
                            Column(
                              children: [
                                Container(height: 60,width: 200,
                                decoration: const BoxDecoration(
                                   image: DecorationImage(image: AssetImage(lineChat1),fit: BoxFit.cover)
                                )),
                                Container(height: 60,width: 200,
                                decoration: const BoxDecoration(
                                   image: DecorationImage(image: AssetImage(lineChat2),fit: BoxFit.cover)
                                )),
                              ],
                            ),
                          ],
                        ),
                        Image.asset(days,height: 25,)
                  ]),
                ),
              ),
              12.heightBox,
              /// three button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 29,width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: yellowColor),
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomText(text: "Withdraw ",color: whiteColor,fontSize: 11),
                          Image.asset(shareWhite)
                        ],
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 29,width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: yellowColor),
                      child: const Center(child: CustomText(text: "Stop shift",color: whiteColor,fontSize: 11,)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 29,width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: yellowColor),
                      child: const Center(child: CustomText(text: "new orders 9",color: whiteColor,fontSize: 11,)),
                    ),
                  ),
                ],
              ),
              23.heightBox,
              SizedBox(
                height: 150, width: double.infinity,
                child: ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Container(
                      height: 133, width: 134,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: list[index].image)),
                            ),
                            CustomText(text: list[index].text),
                            CustomText(text: list[index].number),
                      ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  List<dynamic> list=[
    DashboardListViewModel(
      image: const AssetImage(checkProfile),
      text: 'Assign to drive',
      number: '9'
    ),
    DashboardListViewModel(
      image: const AssetImage(checkProfile),
      text: 'Out of deliver',
      number: '6'
    ),
  ];
}
