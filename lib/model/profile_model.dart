import 'package:flutter/cupertino.dart';

class ProfileScreenModel {
  final AssetImage? image;
  final String? text;
  final Icon? icon;
  final Widget? navigate;

  ProfileScreenModel({
    this.image,
    this.navigate,
    this.text,
    this.icon,
  });
}
