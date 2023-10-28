import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? height;
  final BorderRadiusGeometry? circularRadius;
  final Color? containerColor;
  final TextDecoration? decoration;
  final void Function()? onTap;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;
  final Widget? child;

  const MyButton(
      {super.key,
      this.circularRadius,
      this.containerColor,
      this.decoration,
      this.onTap,
      this.height, this.boxShadow, this.border, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration:
            BoxDecoration(
              boxShadow: boxShadow,
                border: border,
                borderRadius: circularRadius,
                color: containerColor),
        child: Center(
          child: child),
          ),
    );
  }
}
