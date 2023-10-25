import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final BorderRadiusGeometry? circularRadius;
  final Color? containerColor;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final void Function()? onTap;

  const MyButton({super.key, this.circularRadius, this.containerColor, required this.text, this.fontSize, this.fontWeight, this.color, this.decoration, this.overflow, this.letterSpacing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50, width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: circularRadius,
            color: containerColor),
        child: Center(
          child: Text(text,style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            decoration: decoration,
            letterSpacing: letterSpacing,
            overflow: overflow
          ),)
        ),
      ),
    );
  }
}
