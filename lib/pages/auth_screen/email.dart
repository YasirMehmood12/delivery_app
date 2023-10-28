import 'package:delivery_app/custom_widgets/loading_indicator.dart';
import 'package:delivery_app/pages/auth_screen/register_page.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _PasswordController = TextEditingController();

  bool isPassword = true;
  bool isLoading = false;
 final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(text: "Email",),
            10.heightBox,

            /// email
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  validator: (value) => value!.isEmpty? "Kindly Enter Your Email" :null,
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
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  validator: (value) => value!.isEmpty? "Kindly Enter Your Password" :null,
                  controller: _PasswordController,
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
                    hintText: "hola@soytain,tech",
                  ),
                ),
              ),
            ),
            48.heightBox,
            MyButton(
              onTap: () async {
                if(key.currentState!.validate()){
                  setState(() {
                    isLoading = true;
                  });
                  await Future.delayed(const Duration(seconds: 3),() => _loginUser());
                  setState(() {
                    isLoading = false;
                  });
                }
              },
              height: 52,
              circularRadius: BorderRadius.circular(10),
              child: isLoading
                  ? loadingIndicator()
                  : const CustomText(
                text: "Login",color: whiteColor,
              ),
              containerColor: yellowColor,
            ),
            25.heightBox,
            Row(
              children: [
                const CustomText(
                  text: "Not Registered yet?", color: Color(0xff5A5A5A),),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                    },
                    child: const CustomText(text: "Create an Account",
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,)),
              ],
            )
          ],
        ),
      ),
    );
  }

  _loginUser() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text, password: _PasswordController.text).
    then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NaviScreen()));
      Fluttertoast.showToast(msg: "Successfully Login");
    }).onError((error, stackTrace) {
      Fluttertoast.showToast(msg: error.toString());
    });
  }
}
