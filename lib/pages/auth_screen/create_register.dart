import 'package:delivery_app/pages/auth_screen/email.dart';
import 'package:delivery_app/pages/auth_screen/login.dart';
import 'package:delivery_app/pages/auth_screen/vehical_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/colors.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/loading_indicator.dart';
import '../../custom_widgets/mybutton.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool isPassword = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(text: "Register",fontSize: 25,fontWeight: FontWeight.w500,),
            20.heightBox,
            ///email
            const CustomText(text: "Name"),
            10.heightBox,
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: "Full Name",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            20.heightBox,

            ///email
            const CustomText(text: "Email/Phone number"),
            10.heightBox,
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
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
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      child: Icon(isPassword
                          ? Icons.visibility_sharp
                          : Icons.visibility_off_sharp, color: greyColor,
                          size: 20),
                    ),
                    hintText: "* * * * *",
                  ),
                ),
              ),
            ),

            /// confirm password
            const CustomText(text: "Confirm Password"),
            10.heightBox,
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "* * * * *",
                  ),
                ),
              ),
            ),
            48.heightBox,
            MyButton(
              containerColor: yellowColor,
              height: 50, circularRadius: BorderRadius.circular(15),
              onTap: () async {
                if(_passwordController.text == _confirmPasswordController.text){
                  setState(() {isLoading = true;});
                  await Future.delayed(const Duration(seconds: 3),() => _registerUser());
                  setState(() {isLoading = false;});
                }else{
                  Fluttertoast.showToast(msg: "Password is not correct");
                }
              },
              child: isLoading ? loadingIndicator() : const CustomText(
                text: "Confirmed",
              ),
            )
          ],
        ),
      ),
    );
  }

  _registerUser() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text).then((value) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const VehicalRegisterScreen()));
          Fluttertoast.showToast(msg: "SignUp Successfully");
    });
  }
}