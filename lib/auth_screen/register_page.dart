import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final  defaultPinTheme = PinTheme(
    height: 50,
    width: 60,
    textStyle: const TextStyle(fontSize: 16),
    decoration: BoxDecoration(
      border: Border.all(color: greyColor),
      color: white4Color,
    )
  );
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _licensesController = TextEditingController();
  final TextEditingController _vehicalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white4Color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white4Color,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const CustomText(
          text: "Register",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.heightBox,
              const CustomText(text: "Your name",fontSize: 15,fontWeight: FontWeight.bold,),
              9.heightBox,
              /// your name text field
              Container(
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                    color: whiteColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      hintText: "Offical name it will be displayed",
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              22.heightBox,
              const CustomText(text: "Your driving license",fontWeight: FontWeight.bold,fontSize: 15,),
              9.heightBox,
              /// your driving license text field
              Container(
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: whiteColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: _licensesController,
                    decoration: const InputDecoration(
                        hintText: "Upload your driving license",
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
              22.heightBox,
              const CustomText(
                text: "Select your vehicle ",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              10.heightBox,
              ///your vehicle
              Container(
                height: 50,width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: yellowColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,),
                    hint: const CustomText(text: '-Select-'),
                    items: [
                    DropdownMenuItem(
                      value: "1",
                        child: Row(
                      children: [
                        10.widthBox,
                        const CustomText(text: "Bike",color: blackColor),
                        5.widthBox,
                        Container(
                          height: 20,width: 20,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(bikeYellow))
                          ),
                        )
                      ],
                    )),
                    DropdownMenuItem(
                        value: "2",
                        child: Row(
                      children: [
                        10.widthBox,
                        const CustomText(text: "Car",color: blackColor),
                        5.widthBox,
                        Container(
                          height: 20,width: 20,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(car))
                          ),
                        )
                      ],
                    )),
                    DropdownMenuItem(
                        value: "3",
                        child: Row(
                      children: [
                        10.widthBox,
                        const CustomText(text: "Truck",color: blackColor),
                        5.widthBox,
                        Container(
                          height: 20,width: 20,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(truck))
                          ),
                        )
                      ],
                    )),
                  ],
                    onChanged: (value) {
                    setState(() {});},),
                ),
              ),
              /// your verification vehicle number
              30.heightBox,
              const CustomText(
                text: "Your vehicle number",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              10.heightBox,
              Pinput(
                controller: _vehicalController,
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                        border: Border.all(color: yellowColor,width: 2)
                    )
                )
              ),
              40.heightBox,
              MyButton(
                onTap: () {},
                  text: 'Next',
                height: 50,
                containerColor: yellowColor,
                circularRadius: BorderRadius.circular(10),
                color: whiteColor,
                fontSize: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
