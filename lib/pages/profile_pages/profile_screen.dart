import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';
import '../../custom_widgets/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white4Color,
        appBar: AppBar(
        elevation: 0,
        foregroundColor: blackColor,
        backgroundColor: white4Color,
        title: const CustomText(text: 'Profile', fontSize: 30),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              /// Image, text and arrow forward
              10.heightBox,
              Row(
                children: [
                  const CircleAvatar(radius: 50,
                  backgroundImage: AssetImage(photo7)),
                  10.widthBox,
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Micky',fontSize: 24),
                      CustomText(text: '@Micky57689',color: liteGreyColor,fontSize: 15),

                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 25,width: 25,
                    decoration:const BoxDecoration(
                      image: DecorationImage(image: AssetImage(edit))
                    ),
                  )
                ],
              ),
              /// profile list
              20.heightBox,
              Container(
                height: 60,width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor
                ),
                child: ListTile(
                  leading: Container(
                    height:30,width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(bike))
                    ),
                  ),
                  title: const CustomText( text: 'Stop shift',),
                  trailing: Switch(
                    activeColor: whiteColor,
                    activeTrackColor: yellowColor,
                    value: isCheck,
                    onChanged: (value) {isCheck = value;
                      setState(() {});}
                  ),
                ),
              ),
              5.heightBox,
              ListView.builder(
                shrinkWrap: true,
                itemCount: profileModel.length,
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
                        leading: Container(
                        height:30,width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: profileModel[index].image)
                      ),
                  ),
                        title: CustomText( text: profileModel[index].text),
                        trailing: profileModel[index].icon,
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
  List<dynamic> profileModel =[
    ProfileScreenModel(
      image: const AssetImage(location2),
      text: 'Set location',
      icon: const Icon(Icons.arrow_right)
    ),
    ProfileScreenModel(
      image: const AssetImage(report),
      text: 'Report',
      icon: const Icon(Icons.arrow_right)
    ),
    ProfileScreenModel(
        image: const AssetImage(lock),
        text: 'Change Password',
        icon: const Icon(Icons.arrow_right)
    ),
    ProfileScreenModel(
        image: const AssetImage(language),
        text: 'languages',
        icon: const Icon(Icons.arrow_right)
    ),
    ProfileScreenModel(
        image: const AssetImage(support),
        text: 'Support',
        icon: const Icon(Icons.arrow_right)
    ),
    ProfileScreenModel(
        image: const AssetImage(darkMode),
        text: 'Dark mode',
        icon: const Icon(Icons.arrow_right)
    ),
  ];
}