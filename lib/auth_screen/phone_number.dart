import 'package:delivery_app/auth_screen/register_page.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:delivery_app/pages/home/navi_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../custom_widgets/custom_text.dart';

class PhoneNumber extends StatefulWidget {
const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController _phoneNumberController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const CustomText(text: "Phone Number",),
            10.heightBox,
            /// phone
            Container(
              height: 50,
              width:double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.check_circle,color: Color(0xff64C661),size: 16,),
                    hintText: "09233378",
                  ),
                ),
              ),
            ),
            20.heightBox,
            /// password
            const CustomText(text: "Enter Password"),
            10.heightBox,
            Container(
              height: 50,
              width:double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  controller: _passwordController,
                  obscureText: isPassword,
                  decoration:  InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      child: Icon(isPassword
                          ? Icons.visibility_sharp
                          : Icons.visibility_off_sharp,color: greyColor,size: 20),
                    ),
                    hintText: "******",
                  ),
                ),
              ),
            ),
            48.heightBox,
            MyButton(
              circularRadius: BorderRadius.circular(10),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const NaviScreen()));
             },
             height: 52,
             text: "Login",
              color: Colors.white,
              containerColor: yellowColor,
            ),
            25.heightBox,
            Row(
              children: [
               const CustomText(text: "Not Registered yet?",color: Color(0xff5A5A5A),),
               InkWell(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                 },
                   child: const CustomText(text: "Create an Account",color: Colors.black87,fontWeight: FontWeight.bold,)),
              ],
            )
         ]
        ),
      ),
    );
  }
}
