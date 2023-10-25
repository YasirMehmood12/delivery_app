import 'package:delivery_app/custom_widgets/custom_textformfield.dart';
import 'package:delivery_app/custom_widgets/our_button.dart';
import 'package:delivery_app/custom_widgets/our_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';

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
        backgroundColor: whiteBackGround,
        leading: Icon(Icons.arrow_back_ios, color: dallBlackColor),
        title: OurText(
            text: "Change Password",
            fontSize: 24,
            fontBold: FontWeight.bold,
            textColor: dallBlackColor),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                50.heightBox,
                CustomTextformField(
                  tittleText: "Your Account",
                  hintText: "",
                ),
                20.heightBox,
                CustomTextformField(
                  tittleText: "E-Mail",
                  hintText: "",
                ),
                20.heightBox,
                CustomTextformField(
                  tittleText: "Verification",
                  hintText: "",
                ),
                100.heightBox,
                OurButton(
                  text: "Confrim",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
