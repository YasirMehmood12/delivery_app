import 'package:delivery_app/pages/new_order_pages/signature_navi_screen.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/icon_button.dart';
import '../profile_pages/profile_screen.dart';

class OrderOptionScreen extends StatefulWidget {
  const OrderOptionScreen({super.key});

  @override
  State<OrderOptionScreen> createState() => _OrderOptionScreenState();
}

class _OrderOptionScreenState extends State<OrderOptionScreen> {
  late SignatureController controller;

  @override
  void initState() {
    super.initState();
    controller = SignatureController(
        penStrokeWidth: 2
    );
  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool container = false;
  bool? toCustomer = false;
  bool? toNeighbors  = false;
  bool? atFrontDoor  = false;
  bool? apartment  = false;
  bool? other  = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        foregroundColor: blackColor,
        backgroundColor: whiteColor,
        title: const CustomText(text: '#758655', fontSize: 19),
        actions: [
          MyIconButton(
            onPressed: () {},
            color: yellowColor,
            image: const AssetImage(notification),
          ),
          MyIconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => const ProfileScreen()));},
              color: yellowColor,
              image: const AssetImage(profile))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              const CustomText(text: 'where did you leave the order?',fontSize: 19),
              SizedBox(height: 10),
              ListTile(
                title: const CustomText(text: 'To customer'),
                leading: Checkbox(value: toCustomer, onChanged: (value) {
                  setState(() {
                    toCustomer = value;
                  });
                },),
              ),
              ListTile(
                title: const CustomText(text: 'To neighbors'),
                leading: Checkbox(value: toNeighbors, onChanged: (value) {
                  setState(() {
                    toNeighbors = value;
                  });
                },),
              ),
              ListTile(
                title: const CustomText(text: 'At front door'),
                leading: Checkbox(value: atFrontDoor, onChanged: (value) {
                  setState(() {
                    atFrontDoor = value;
                  });
                },),
              ),
              ListTile(
                title: const CustomText(text: 'Apartment'),
                leading: Checkbox(value: apartment, onChanged: (value) {
                  setState(() {
                    apartment = value;
                  });
                },),
              ),
              ListTile(
                title: const CustomText(text: 'Other'),
                leading: Checkbox(value: other, onChanged: (value) {
                  setState(() {
                    other = value;
                  });
                },),
              ),

              ///container signator
              Container(
                height: 220, width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: liteWhiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10,top: 10),
                      child: CustomText(text: 'Note',color: greyColor,fontSize: 19),
                    ),
                    Signature(
                        dynamicPressureSupported: true,
                        height: 180,
                        width: 210,
                        backgroundColor: liteWhiteColor,
                        controller: controller
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignatureNaviScreen()));
                },
                child: Container(
                  height: 50,width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: yellowColor),
                  child: const Center(
                    child: CustomText(
                      text: 'Update',color: whiteColor,
                      fontSize: 18,fontWeight: FontWeight.w500,
                    ),
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
