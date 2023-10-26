import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? color;
  final AssetImage? image;
  const MyIconButton(
      {super.key, this.onPressed, this.color, this.image,});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        height: 29,
        width: 29,
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            image: DecorationImage(image: image!)),
      ),
    );
  }
}
