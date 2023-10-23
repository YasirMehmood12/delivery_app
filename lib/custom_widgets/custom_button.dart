import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts/colors.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        this.text = "",
        this.fontBold = FontWeight.w500,
        this.fontSize = 15,
        this.textColor = Colors.white,
        this.height = 58,
        this.width = double.infinity,
        this.borderRadius = 20,
        this.borderColor =blueColor,
        this.backgroundColor = blueColor,
        this.onPress});

  final String? text;
  final FontWeight? fontBold;
  final double? fontSize;
  final double? height;
  final double? borderRadius;
  final double? width;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap:onPress,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            border: Border.all(color: borderColor!, width: 2),
            color: backgroundColor,
          ),
          child: Center(
            child: Text(
              text!,
              style: GoogleFonts.poppins(
                  fontWeight: fontBold, fontSize: fontSize, color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}