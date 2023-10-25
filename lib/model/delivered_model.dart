import 'package:flutter/cupertino.dart';
/// today model list
class ToDayModel{
  final AssetImage? image;
  final String? leftText;
  final String? rightText;
  final String? leftText2;
  final String? rightText2;

  ToDayModel(
      {this.image,
      this.leftText,
      this.rightText,
      this.leftText2,
      this.rightText2});
}
/// yesterday model list
class YesTerDayModel{
  final AssetImage? image;
  final String? leftText;
  final String? rightText;
  final String? leftText2;
  final String? rightText2;

  YesTerDayModel(
      {this.image,
        this.leftText,
        this.rightText,
        this.leftText2,
        this.rightText2});
}