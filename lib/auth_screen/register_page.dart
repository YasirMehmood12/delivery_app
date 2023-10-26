import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom_widgets/custom_Textfield.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F6FF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 43,vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomText(
                text: "Register",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            88.heightBox,
            CustomText(text: "Your name",fontSize: 15,fontWeight: FontWeight.bold,),
            9.heightBox,
            SizedBox(
              height: 47,
              width:double.infinity,
              child: CustomTextField(
                hintText: "Offical name it will be displayed",
                fillColor: Colors.white,
                filled: true,
                radius: 20,
                enabled: true,
                bcolor: Color(0xffF2F6FF),
                fcolor: Color(0xffF2F6FF),
                ecolor: Color(0xffF2F6FF),

              ),
            ),
            22.heightBox,
            CustomText(text: "Your driving license",fontWeight: FontWeight.bold,fontSize: 15,),
            9.heightBox,
            SizedBox(
              height: 47,
              width:double.infinity,
              child: CustomTextField(
                hintText: "Upload your driving license",
                fillColor: Colors.white,
                filled: true,
                radius: 20,
                enabled: true,
                bcolor: Color(0xffF2F6FF),
                fcolor: Color(0xffF2F6FF),
                ecolor: Color(0xffF2F6FF),
              ),
            ),
            22.heightBox,
            CustomText(
              text: "Select your vehicle ",
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),

          ],
        ),
      ),
    );
  }
}
