import 'package:flutter/material.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';

class SignatureScreenTab extends StatelessWidget {
  const SignatureScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),

        /// start text
        const CustomText(
            textAlign: TextAlign.center,
            text: 'Write the signer name and add a signature.',
            fontSize: 19),
        SizedBox(height: 10),

        /// image signature
        Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(image: AssetImage(signature))),
        ),
        SizedBox(height: 10),

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
        SizedBox(height: 10),
        ///container signature and text
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                  text: 'Signature',
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
              SizedBox(height: 5),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.89,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: liteWhiteColor,
                    image: const DecorationImage(
                        image: AssetImage(sign))),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
