import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/custom_widgets/custom_Textfield.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_text.dart';
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Icon(Icons.arrow_back,color: Color(0xff565656),),
        title: CustomText(text: "Change password",fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xff565656),),
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 79),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("your account"),
            SizedBox(height: 12,),
            CustomTextField(
              bcolor:yellowColor,
              enabled: true,
              radius: 10,
              fcolor: yellowColor,
            ),

          ],
        ),
      ),
    );
  }
}
