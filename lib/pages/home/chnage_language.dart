import 'package:delivery_app/consts/colors.dart';
import 'package:flutter/material.dart';

import '../../custom_widgets/our_text.dart';


class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackGround,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteBackGround,
        leading: Icon(Icons.arrow_back_ios, color: dallBlackColor),
        title: OurText(
            text: "Change Language",
            fontSize: 24,
            fontBold: FontWeight.bold,
            textColor: dallBlackColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
