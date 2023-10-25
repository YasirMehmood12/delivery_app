import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:delivery_app/custom_widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QRCodeScreenTab extends StatefulWidget {
  const QRCodeScreenTab({super.key});

  @override
  State<QRCodeScreenTab> createState() => _QRCodeScreenTabState();
}

class _QRCodeScreenTabState extends State<QRCodeScreenTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          10.heightBox,
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Scan QR code',
                  fontSize: 24,
                ),
                CustomText(
                  text: 'Scan QR code for your product\n verification ',
                  color: liteBlackColor,
                  fontSize: 16,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          10.heightBox,
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(qrCodeImage))
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: MyButton(
              containerColor: yellowColor,
              circularRadius: BorderRadius.circular(15),
              height: 60,
              onTap: () {},
                text: 'Scan',color: whiteColor,fontSize: 25),
          )
        ],
      ),
    );
  }
}
