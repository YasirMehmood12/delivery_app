import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../custom_widgets/custom_text.dart';
import 'navigate_screen.dart';

class OnGoingScreen extends StatefulWidget {
  const OnGoingScreen({super.key});

  @override
  State<OnGoingScreen> createState() => _OnGoingScreenState();
}

class _OnGoingScreenState extends State<OnGoingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 340,width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(map),fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///app bar text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: CustomText(text: 'Order No. F12005', fontSize: 20),
                ),
                ///navigate share button
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigateScreen()));
                    },
                    child: Container(
                      height: 45,width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: darkColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CustomText(text: 'Navigate',color: whiteColor),
                          Image.asset(shareYellow)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
            const SizedBox(height: 10),
            SizedBox(
              height: 310,width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 2,width: 100,color: liteWhiteColor,),
                    /// money and number and more vertical button
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const CustomText(text: '36 \$',fontSize: 17),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 35,width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: liteBlackColor),
                            child: const Center(
                              child: CustomText(
                                text: 'Went to you',color: yellowColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Divider(),
                    const SizedBox(height: 5),
                    ///texts
                    Row(
                      children: [
                        SizedBox(
                          height: 120,width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.circle_outlined,color: greenColor,size: 15),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: '24 Rustaveli Ave St',fontSize: 15),
                                      SizedBox(height: 8),
                                      CustomText(text: 'Georgia, Batumi',fontSize: 13,color: liteGreyColor),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(location),
                                  const SizedBox(width: 12),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5),
                                      CustomText(text: '1 Sherif Khimshiashvili St',fontSize: 15),
                                      SizedBox(height: 8),
                                      CustomText(text: 'Georgia, Batumi',fontSize: 13,color: liteGreyColor),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Divider(),
                    const SizedBox(height: 5),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(photo),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CustomText(text: 'Aleksandr V.'),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: liteWhite2Color,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage(phone))
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    color: liteWhite2Color,shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage(chat))
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                  itemSize: 25,
                                  itemCount: 1,
                                  initialRating: 1,
                                  maxRating: 1,
                                  onRatingUpdate: (value) {},
                                  itemBuilder: (BuildContext context, int index) => const Icon(Icons.star,color: yellowColor,)
                              ),
                              const CustomText(text: '4,9',color: liteGreyColor),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
