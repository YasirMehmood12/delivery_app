import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../custom_widgets/custom_Textfield.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_text.dart';
class Email extends StatelessWidget {
   Email({super.key});
  TextEditingController _emailController =TextEditingController();
  TextEditingController _PasswordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomText(text: "Email",),
            SizedBox(height: 7,),
            SizedBox(
              height: 47,
              width:double.infinity,
              child: CustomTextField(
                controller: _emailController,
                suffixIcon: Icon(Icons.check_circle,color: Color(0xff64C661),size: 16,),
                hintText: "hola@soytain,tech",
                fillColor: Colors.white,
                filled: true,
                radius: 20,
                enabled: true,
                bcolor: Color(0xffF2F6FF),
                fcolor: Color(0xffF2F6FF),
                ecolor: Color(0xffF2F6FF),

              ),
            ),
            SizedBox(height: 20,),
            CustomText(text: "Enter Password",),
            SizedBox(
              height: 47,
              width:double.infinity,
              child: CustomTextField(
                controller: _PasswordController,
                suffixIcon: Icon(Icons.remove_red_eye_outlined,size: 16,),
                hintText: "hola@soytain,tech",
                fillColor: Colors.white,
                filled: true,
                radius: 20,
                enabled: true,
                bcolor: Color(0xffF2F6FF),
                fcolor: Color(0xffF2F6FF),
                ecolor: Color(0xffF2F6FF),

              ),
            ),
            SizedBox(height: 48,),
            CustomButton(
              height: 52,
              text: "Login",
              textColor: Colors.white,
              backgroundColor: yellowColor,
              borderColor: yellowColor,
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                CustomText(text: "Not Registered yet?",color: Color(0xff5A5A5A),),
                InkWell(child: CustomText(text: "Create an Account",color: Colors.black87,fontWeight: FontWeight.bold,)),
              ],
            )


          ],

        ),
      ),
    );;
  }
}
