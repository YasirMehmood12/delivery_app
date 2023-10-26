import 'package:delivery_app/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextformField extends StatelessWidget {
  const CustomTextformField({
    super.key,
    this.preIcon,
    this.suffIcon,
    this.hintText = "",
    this.text,
    this.fontBold = FontWeight.w400,
    this.fontSize = 14,
    this.textColor = Colors.black,
    this.tittleText = "Add Tittle",
    this.myController,
    this.validator, this.isOb=false,
  });

  final Icon? suffIcon;
  final Icon? preIcon;
  final String? hintText;
  final String? text;
  final String? tittleText;
  final FontWeight? fontBold;
  final double? fontSize;
  final Color? textColor;
  final bool? isOb;
  final TextEditingController? myController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            tittleText!,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),
        SizedBox(height: 5,),
        SizedBox(
          height: 48,
          width: double.infinity,
          child: TextFormField(
            cursorColor:yellowColor,
            obscureText:isOb!,
            validator: validator,
            controller: myController,
            decoration: InputDecoration(
              fillColor: Color(0xffFFFFFF),
              filled: true,
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                  fontWeight: fontBold, fontSize: fontSize, color: textColor),
              prefixIcon: preIcon,
              suffixIcon: suffIcon,
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 1, color: yellowColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 1, color: yellowColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Color(0xffFFC700),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}