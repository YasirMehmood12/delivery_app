import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:delivery_app/pages/auth_screen/create_register.dart';
import 'package:delivery_app/pages/home/navi_screen.dart';
import 'package:flutter/material.dart';
import '../../consts/colors.dart';
import '../../custom_widgets/custom_text.dart';

class PhoneNumber extends StatefulWidget {
const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController _contryCodeController=TextEditingController();
  final TextEditingController _phoneNumberController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

  @override
  void initState() {
    _contryCodeController.text="+92";
    super.initState();
  }

  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const CustomText(text: "Phone Number",),
            const SizedBox(height: 10),
            /// phone
            Container(
              height: 50,
              width:double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 30,
                      child: TextField(
                        controller: _contryCodeController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const CustomText(text: '|',fontSize: 40,color: Colors.grey),
                    Expanded(
                      child: TextField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.check_circle,color: Color(0xff64C661),size: 16,),
                          hintText: "3339234",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            /// password
            const CustomText(text: "Enter Password"),
            const SizedBox(height: 10),
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
            const SizedBox(height: 48),
            MyButton(
              circularRadius: BorderRadius.circular(10),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const NaviScreen()));
             },
             height: 52,
             child: const CustomText(
               text: "Login",color: Colors.white,),
              containerColor: yellowColor,
            ),
            const SizedBox(height: 25),
            Row(
              children: [
               const CustomText(text: "Not Registered yet?",color: Color(0xff5A5A5A),),
               InkWell(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateScreen()));
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
