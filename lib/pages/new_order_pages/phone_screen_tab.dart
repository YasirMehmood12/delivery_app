import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';
class PhoneScreenTab extends StatefulWidget {
  const PhoneScreenTab({super.key});

  @override
  State<PhoneScreenTab> createState() => _PhoneScreenTabState();
}

class _PhoneScreenTabState extends State<PhoneScreenTab> {
  
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: liteBlackColor,
          leading: InkWell(
            onTap: () {
              setState(() {
                isShow =! isShow;
              });
            },
              child: isShow? const Icon(Icons.flash_on,color: whiteColor):const Icon(Icons.flash_off)),
          actions: [
            IconButton(
              onPressed: () {},
                icon: const Icon(Icons.menu,color: whiteColor,))
          ],
        ),
        /// image container
        Container(
          height: 360,width: double.infinity,
          decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(shoes),fit: BoxFit.fitWidth)
        ),),
        /// text, camera , flip images buttons
        Container(
          height: 100,width: double.infinity,
          color: liteBlackColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// text button
              InkWell(
                onTap: () {},
                  child: const CustomText(text: 'Cancle',color: whiteColor,fontSize: 18)),
              /// camera click button
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: whiteColor,width: 5)
                  ),
                  child: const Center(child: Icon(Icons.circle,color: whiteColor,size: 70,)),
                ),
              ),
              /// camera flip button
              InkWell(
                  onTap: () {},
                  child: const Icon(Icons.flip_camera_ios_outlined,color: whiteColor,size: 50,))
            ],
          ),
          ),
      ],
    );
  }
}
