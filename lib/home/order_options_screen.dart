import 'package:delivery_app/home/signature_navi_screen.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            20.heightBox,
            const CustomText(text: 'where did you leave the order?',fontSize: 19),
            20.heightBox,
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
              height: 250, width: 270,
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
                      height: 210,
                      width: 250,
                      backgroundColor: liteWhiteColor,
                      controller: controller
                  )

                ],
              ),
            ),

            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderUpdateScreen()));
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
            10.heightBox
          ],
        ),
      ),
    );
  }
}
