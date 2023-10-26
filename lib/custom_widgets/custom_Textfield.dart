import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? validator;
  final TextEditingController? controller;
  final double? radius;
  final bool? isPassword;
  final Color fcolor;
  final double fwidth;
  final TextStyle? hintStyle;
  final Color bcolor;
  final double bwidth;
  final bool? enabled;
  final Color ecolor;
  final double ewidth;
  final int maxLines;
  final Color? fillColor;
  final bool? filled;
  final TextInputType? keyboradType;
  final void Function(String)? onChanged;
  final bool showCursor;

  const CustomTextField({Key? key,
    this.hintText,
    this.labelText,
    this.validator,
    this.controller,
    this.radius = 0,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.fcolor = Colors.black,
    this.fwidth = 0,
    this.hintStyle,
    this.bcolor = Colors.black,
    this.bwidth = 0,
    this.enabled = true,
    this.ecolor = Colors.black,
    this.ewidth = 0,
    this.maxLines = 1,
    this.fillColor,
    this.filled, this.keyboradType, this.onChanged,
    this.showCursor = true,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      showCursor: showCursor,
      keyboardType: keyboradType,
      maxLines: maxLines,
      obscureText: isPassword!,
      controller: controller,
      validator: (val) => validator!(val!),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          labelText: labelText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: filled,
          fillColor: fillColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius!),
              borderSide: BorderSide(color: bcolor, width: bwidth)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius!),
              borderSide: BorderSide(color: fcolor, width: fwidth)),
          enabled: enabled!,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius!),
              borderSide: BorderSide(color: ecolor, width: ewidth)
          )
      ),
    );
  }
}
