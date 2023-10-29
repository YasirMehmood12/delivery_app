import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:delivery_app/pages/home/navi_screen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VehicalRegisterScreen extends StatefulWidget {
  const VehicalRegisterScreen({super.key});

  @override
  State<VehicalRegisterScreen> createState() => _VehicalRegisterScreenState();
}

class _VehicalRegisterScreenState extends State<VehicalRegisterScreen> {

  final defaultPinTheme = PinTheme(
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
          text: "Vehicle Register",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const CustomText(
                text: "Your name", fontSize: 15, fontWeight: FontWeight.bold,),
              const SizedBox(height: 9),

              /// your name text field
              Container(
                height: 50,
                width: double.infinity,
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
              const SizedBox(height: 22),
              const CustomText(text: "Your driving license",
                fontWeight: FontWeight.bold,
                fontSize: 15,),
              const SizedBox(height: 9),

              /// your driving license text field
              Container(
                height: 50,
                width: double.infinity,
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
              const SizedBox(height: 9),
              const CustomText(
                text: "Select your vehicle ",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              ///your vehicle
              Container(
                height: 50, width: double.infinity,
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
                              const SizedBox(width: 10),
                              const CustomText(text: "Bike", color: blackColor),
                              const SizedBox(width: 5),
                              Container(
                                height: 20, width: 20,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(bikeYellow))
                                ),
                              )
                            ],
                          )),
                      DropdownMenuItem(
                          value: "2",
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              const CustomText(text: "Car", color: blackColor),
                              const SizedBox(width: 5),
                              Container(
                                height: 20, width: 20,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(car))
                                ),
                              )
                            ],
                          )),
                      DropdownMenuItem(
                          value: "3",
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              const CustomText(
                                  text: "Truck", color: blackColor),
                              const SizedBox(width: 5),
                              Container(
                                height: 20, width: 20,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(truck))
                                ),
                              )
                            ],
                          )),
                    ],
                    onChanged: (value) {
                      setState(() {});
                    },),
                ),
              ),
              /// your verification vehicle number
              const SizedBox(height: 30),
              const CustomText(
                text: "Your vehicle number",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              Pinput(
                  controller: _vehicalController,
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: BoxDecoration(
                          border: Border.all(color: yellowColor, width: 2)
                      )
                  )
              ),
              const SizedBox(height: 40),
              MyButton(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NaviScreen()));
                },
                height: 50,
                containerColor: yellowColor,
                circularRadius: BorderRadius.circular(10),
                child: const CustomText(
                  text: 'Next',color: whiteColor,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
