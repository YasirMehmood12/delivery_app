import 'package:delivery_app/consts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loadingIndicator(){
  return const Center(
    child: SpinKitSpinningLines(
      size: 50,
      itemCount: 3,
      duration: Duration(seconds: 3), color: whiteColor,
    ),
  );
}
