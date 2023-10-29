import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/pages/auth_screen/login.dart';
import 'package:delivery_app/pages/profile_pages/change_password.dart';
import 'package:delivery_app/pages/profile_pages/chnage_language.dart';
import 'package:delivery_app/pages/profile_pages/customer_supports.dart';
import 'package:delivery_app/pages/profile_pages/set_location_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
        title: const CustomText(text: 'Profile', fontSize: 30),
          actions: [IconButton(onPressed: () => signOut(), icon: const Icon(Icons.login_outlined,size: 30))],
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              /// Image, text and arrow forward
              SizedBox(height: 10),
              Row(
                children: [
                  const CircleAvatar(radius: 50,
                  backgroundImage: AssetImage(photo7)),
                  SizedBox(width: 10),
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
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
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
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SetLocationScreen(),));
                },
                child: Container(
                  height: 60,width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor
                  ),
                  child: ListTile(
                      leading: Container(
                        height:30,width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage(location2))
                        ),
                      ),
                      title: const CustomText( text: 'Set Location',),
                      trailing: const Icon(Icons.arrow_right,color: liteBlackColor,)
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60,width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor
                  ),
                  child: ListTile(
                      leading: Container(
                        height:30,width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage(report))
                        ),
                      ),
                      title: const CustomText( text: "Report",),
                      trailing: const Icon(Icons.arrow_right,color: liteBlackColor,)
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePassword()));
                },
                child: Container(
                  height: 60,width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor
                  ),
                  child: ListTile(
                      leading: Container(
                        height:30,width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage(lock))
                        ),
                      ),
                      title: const CustomText( text: 'Change Password',),
                      trailing: const Icon(Icons.arrow_right,color: liteBlackColor,)
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangeLanguage()));
                },
                child: Container(
                  height: 60,width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor
                  ),
                  child: ListTile(
                      leading: Container(
                        height:30,width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage(language))
                        ),
                      ),
                      title: const CustomText( text: 'Language',),
                      trailing: const Icon(Icons.arrow_right,color: liteBlackColor,)
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerSupport()));
                },
                child: Container(
                  height: 60,width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor
                  ),
                  child: ListTile(
                      leading: Container(
                        height:30,width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage(support))
                        ),
                      ),
                      title: const CustomText( text: 'Support',),
                      trailing: const Icon(Icons.arrow_right,color: liteBlackColor,)
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60,width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor
                  ),
                  child: ListTile(
                      leading: Container(
                        height:30,width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage(darkMode))
                        ),
                      ),
                      title: const CustomText( text: 'Dark Mode',),
                      trailing: const Icon(Icons.arrow_right,color: liteBlackColor,)
                  ),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
  signOut(){
    FirebaseAuth.instance.signOut().then((value) {
      Fluttertoast.showToast(msg: "SignOut Successfully");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
}