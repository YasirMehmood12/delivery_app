import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';

class OnGoingScreen extends StatefulWidget {
  const OnGoingScreen({super.key});

  @override
  State<OnGoingScreen> createState() => _OnGoingScreenState();
}

class _OnGoingScreenState extends State<OnGoingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(map),fit: BoxFit.cover)
                  ),
                child: CustomText(text: 'Order No. F12005', fontSize: 20),),

              ],
            ),
          )),
    );
  }
}
