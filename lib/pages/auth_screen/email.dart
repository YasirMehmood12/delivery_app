import 'package:delivery_app/pages/auth_screen/register_page.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';
import '../../custom_widgets/custom_text.dart';
import '../home/navi_screen.dart';

class Email extends StatefulWidget {
   const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final TextEditingController _emailController =TextEditingController();

  final TextEditingController _PasswordController =TextEditingController();

  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(text: "Email",),
            10.heightBox,
            /// email
            Container(
              height: 50,
              width:double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: "hola@soytain,tech",
                    border: InputBorder.none,
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
                  controller: _PasswordController,
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
                    hintText: "hola@soytain,tech",
                  ),
                ),
              ),
            ),
            48.heightBox,
            MyButton(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const NaviScreen()));
              },
              height: 52,
              circularRadius: BorderRadius.circular(10),
              text: "Login",
              containerColor: yellowColor,
              color: whiteColor,
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
          ],
        ),
    );
  }
}
