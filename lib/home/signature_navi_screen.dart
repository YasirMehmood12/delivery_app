import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';

class SignatureNaviScreen extends StatefulWidget {
  const SignatureNaviScreen({super.key});

  @override
  State<SignatureNaviScreen> createState() => _SignatureNaviScreenState();
}

class _SignatureNaviScreenState extends State<SignatureNaviScreen> {
  String selectedType = "Signature";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        foregroundColor: blackColor,
        backgroundColor: whiteColor,
        title: const CustomText(text: '#758655', fontSize: 19),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 29,
              width: 29,
              decoration: const BoxDecoration(
                  color: yellowColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(notification))),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 29,
              width: 29,
              decoration: const BoxDecoration(
                  color: yellowColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(profile))),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox,

              /// start text
              const CustomText(
                  textAlign: TextAlign.center,
                  text: 'Write the signer name and add a signature.',
                  fontSize: 19),
              10.heightBox,

              /// image signature
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(image: AssetImage(signature))),
              ),
              10.heightBox,

              /// text field
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: whiteColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Customer name', border: InputBorder.none),
                  ),
                ),
              ),
              10.heightBox,
              ///container signature and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      text: 'Signature',
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                  5.heightBox,
                  Container(
                    height: MediaQuery.of(context).size.height * 0.33,
                    width: MediaQuery.of(context).size.width * 1.0,
                    color: Colors.blue,
                    child: Stack(children: [
                      Center(
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.89,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: liteWhiteColor,
                              image: const DecorationImage(
                                  image: AssetImage(sign))),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  selectedType = "QR";
                                  setState(() {});
                                },
                                child: CustomText(
                                  text: 'QR Code',
                                  color: selectedType == "QR"
                                      ? Colors.yellow
                                      : Colors.black,
                                ),
                              ),
                              InkWell(
                                 onTap: () {
                                   selectedType = 'Phone';
                                   setState(() {});
                                 },
                                child: CustomText(text: 'Phone' , color: selectedType == "Phone"
                                    ? Colors.yellow
                                    : Colors.black,),
                              ),
                              InkWell(
                                onTap: () {
                                  selectedType = 'Signature';
                                  setState(() {});
                                },
                                child: CustomText(
                                  text: 'Signature',
                                  color: selectedType == "Signature"
                                      ? Colors.yellow
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              ///last two buttons
              25.heightBox,
              Row(
                children: [
                  Expanded(
                    child: MyButton(
                      height: 50,
                      border: Border.all(color: fulRedColor),
                      circularRadius: BorderRadius.circular(15),
                      text: 'Close',
                      onTap: () {
                        Navigator.pop(context);
                      },
                      fontSize: 13,
                      color: fulRedColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  20.widthBox,
                  Expanded(
                    child: MyButton(
                      height: 50,
                      containerColor: yellowColor,
                      circularRadius: BorderRadius.circular(15),
                      text: 'Done',
                      onTap: () {},
                      fontSize: 13,
                      color: whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
