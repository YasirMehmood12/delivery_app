import 'package:delivery_app/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../custom_widgets/our_text.dart';


class CustomerSupport extends StatefulWidget {
  const CustomerSupport({super.key});

  @override
  State<CustomerSupport> createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackGround,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteBackGround,
        leading: Icon(Icons.arrow_back_ios, color: dallBlackColor),
        title: OurText(
            text: "Customer Support",
            fontSize: 24,
            fontBold: FontWeight.bold,
            textColor: dallBlackColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              50.heightBox,

              /// Image Container
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(customerSupport), fit: BoxFit.cover),
                ),
              ),

              ///
              20.heightBox,
              Container(
                decoration: BoxDecoration(
                    color: yellowColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(money), fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                      20.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OurText(
                            text: "Payment&chargers",
                            fontBold: FontWeight.bold,
                            fontSize: 15,
                            textColor: Colors.white,
                          ),
                          3.heightBox,
                          OurText(
                            text: "About your payments and chargers",
                            fontBold: FontWeight.bold,
                            fontSize: 8,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              20.heightBox,
              Container(
                decoration: BoxDecoration(
                    color: yellowColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(warning), fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                      20.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OurText(
                            text: "Reports",
                            fontBold: FontWeight.bold,
                            fontSize: 15,
                            textColor: Colors.white,
                          ),
                          3.heightBox,
                          OurText(
                            text: "About your payments and chargers",
                            fontBold: FontWeight.bold,
                            fontSize: 8,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              20.heightBox,
              Container(
                decoration: BoxDecoration(
                    color: yellowColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(rename), fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                      20.widthBox,
                      OurText(
                        text: "Live chat on app",
                        fontBold: FontWeight.bold,
                        fontSize: 15,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              20.heightBox,
              Container(
                decoration: BoxDecoration(
                    color: yellowColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(whatsapp), fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                      20.widthBox,
                      OurText(
                        text: "Chat on whatsapp",
                        fontBold: FontWeight.bold,
                        fontSize: 15,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
