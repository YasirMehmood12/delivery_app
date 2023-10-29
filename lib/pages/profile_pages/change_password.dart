import 'package:delivery_app/custom_widgets/custom_textformfield.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:flutter/material.dart';
import '../../consts/colors.dart';
import '../../custom_widgets/custom_text.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackGround,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: blackColor,
        backgroundColor: whiteBackGround,
        title: const CustomText(
            text: "Change Password",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: dallBlackColor),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                CustomTextformField(
                  tittleText: "Your Account",
                  hintText: "",
                ),
                SizedBox(height: 20),
                CustomTextformField(
                  tittleText: "E-Mail",
                  hintText: "",
                ),
                SizedBox(height: 20),
                CustomTextformField(
                  tittleText: "Verification",
                  hintText: "",
                ),
                SizedBox(height: 100),
                MyButton(
                  child: CustomText(
                    text: "Confirm",
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
