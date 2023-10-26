import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/custom_widgets/custom_Textfield.dart';
import 'package:delivery_app/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../custom_widgets/custom_text.dart';
import '../custom_widgets/text_form_field.dart';
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Color(0xffF2F6FF),
        appBar: AppBar(
          backgroundColor: Color(0xffF2F6FF),
          leading: Icon(Icons.arrow_back,color: Color(0xff565656),),
          title: CustomText(text: "Change password",fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xff565656),),
          elevation: 0,
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 79),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextformField(
               tittleText: "Your account",
              ),
            28.heightBox,
              CustomTextformField(
                tittleText: "E-Mail",
              ),
              28.heightBox,
              CustomTextformField(
                tittleText: "Verification",
              ),
              151.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: CustomButton(
                  height: 60,
                  width: double.infinity,
                  backgroundColor: yellowColor,
                  text: "Confrim",
                  borderColor: yellowColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
