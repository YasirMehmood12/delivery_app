import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:delivery_app/model/transactions_model.dart';
import 'package:delivery_app/pages/profile_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {

  String selectiveItem  = 'Today';
  List listItem = [
    "Today",
    "Daily",
    "Yesterday",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white3Color,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: blackColor,
        backgroundColor: white3Color,
        title: const CustomText(text: 'Transactions', fontSize: 19),
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
            },
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
              /// two buttons
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60, width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: yellowColor),
                    child: Center(
                      child: DropdownButton(
                        underline: DropdownButtonHideUnderline(child: Container()),

                        value: selectiveItem,
                        dropdownColor: greyColor,
                        icon: const Icon(Icons.arrow_drop_down,color: whiteColor,size: 10),
                        items: listItem.map((valueItem) {
                          return DropdownMenuItem(
                              value: valueItem,
                              child: CustomText(text: valueItem,color: whiteColor,));
                        }).toList(),
                        iconSize: 10,
                        onChanged: (newValue) {
                          setState(() {
                            selectiveItem = newValue as String;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 50, width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: yellowColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},child: const CustomText(
                          text: "Withdrawal",color: whiteColor,
                          fontSize: 14,
                        ),
                        ),
                        Image.asset(shareWhite)
                      ],
                    )
                  ),

                ],
              ),
              /// text december and list
              30.heightBox,
              const CustomText(text: 'December',
              fontSize: 20,fontWeight: FontWeight.w500,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: decemberModel.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: whiteColor
                        ),
                        child: ListTile(
                          leading: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: decemberModel[index].upText,fontSize: 15),
                              CustomText(text: decemberModel[index].downText,fontSize: 15)
                            ],
                          ),
                          trailing: Container(
                            height: 30,width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: decemberModel[index].color
                            ),
                            child: Center(
                              child: CustomText(
                                text: decemberModel[index].rightText,color: decemberModel[index].colorText,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),),

              /// text2 and list2
              30.heightBox,
              const CustomText(text: 'Withdraw',
                fontSize: 20,fontWeight: FontWeight.w500,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: withdrawModel.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: whiteColor
                        ),
                        child: ListTile(
                          leading: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: withdrawModel[index].upText,fontSize: 15),
                              CustomText(text: withdrawModel[index].downText,fontSize: 15)
                            ],
                          ),
                          trailing: Container(
                            height: 30,width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: withdrawModel[index].color
                            ),
                            child: Center(
                              child: CustomText(
                                text: withdrawModel[index].rightText,color: withdrawModel[index].colorText,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),)
            ],
          ),
        ),
      ),
    );
  }
  List<dynamic> decemberModel = [
    DecemberModel(
      color: white4Color,
      colorText: fullGreenColor,
      upText: '#96675',
      downText: '13/8/2023',
      rightText: '+32654',
    ),
    DecemberModel(
      color: redWhiteColor,
      colorText: red1Color,
      upText: '#96675',
      downText: '13/8/2023',
      rightText: '-96675',
    ),
    DecemberModel(
      color: white4Color,
      colorText: fullGreenColor,
      upText: '#96675',
      downText: '13/8/2023',
      rightText: '+32654',
    ),
    DecemberModel(
      color: white4Color,
      colorText: fullGreenColor,
      upText: '#96675',
      downText: '13/8/2023',
      rightText: '+32654',
    ),
  ];
  List<dynamic> withdrawModel = [

    WithdrawModel(
      color: redWhiteColor,
      colorText: red1Color,
      upText: 'Withdraw',
      downText: '13/8/2023',
      rightText: '-961253',
    ),
    WithdrawModel(
      color: redWhiteColor,
      colorText: red1Color,
      upText: 'Withdraw',
      downText: '13/8/2023',
      rightText: '-616168',
    ),
    WithdrawModel(
      color: redWhiteColor,
      colorText: red1Color,
      upText: 'Withdraw',
      downText: '13/8/2023',
      rightText: '-99865',
    ),
  ];
}
