import 'package:delivery_app/consts/colors.dart';
import 'package:delivery_app/consts/images.dart';
import 'package:delivery_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OutGoingTabbarScreen extends StatefulWidget {
  const OutGoingTabbarScreen({super.key});

  @override
  State<OutGoingTabbarScreen> createState() => _OutGoingTabbarScreenState();
}

class _OutGoingTabbarScreenState extends State<OutGoingTabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Container(
            height: 275,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  /// money and number and more vertical button
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const CustomText(text: '47 \$',fontSize: 17),
                      const Spacer(),
                      const CustomText(text: "No. F15306",color: liteGreyColor,fontSize: 13),
                      GestureDetector(onTap: () {},
                          child: const Icon(Icons.more_vert,color: veryGreyColor,))
                    ],
                  ),
                  /// two Buttons
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: liteBlackColor),
                          child: const Center(
                            child: CustomText(
                              text: 'Skip',color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: yellowColor),
                          child: const Center(
                            child: CustomText(
                              text: 'Accept order',color: blackColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  ///  first texts
                  Row(
                    children: [
                      /// lift size
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
                                    CustomText(text: '88 Zurab Gorgiladze St',fontSize: 15),
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
                                    CustomText(text: '5 Noe Zhordania St',fontSize: 15),
                                    SizedBox(height: 8),
                                    CustomText(text: 'Georgia, Batumi',fontSize: 13,color: liteGreyColor),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      /// right size
                      SizedBox(
                        height: 120,width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 60,width: 60,
                              child: TimelineTile(
                                afterLineStyle: const LineStyle(
                                    color: tealLiteColor),
                                indicatorStyle: const IndicatorStyle(
                                    color: tealLiteColor),
                                endChild: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Pick'),
                                ),
                                isFirst: true,
                              ),
                            ),
                            SizedBox(
                              height: 60,width: 60,
                              child: TimelineTile(
                                beforeLineStyle: LineStyle(
                                    color: liteWhiteColor
                                ),
                                indicatorStyle: const IndicatorStyle(
                                    color: liteWhiteColor),
                                endChild: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: const Text('Drop'),
                                ),
                                isLast: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  /// money and number and more vertical button
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      const CustomText(text: '36 \$',fontSize: 17),
                      const Spacer(),
                      const CustomText(text: "No. F15306",color: liteGreyColor,fontSize: 13),
                      GestureDetector(onTap: () {},
                          child: const Icon(Icons.more_vert,color: veryGreyColor,))
                    ],
                  ),
                  /// two Buttons
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: liteBlackColor),
                          child: const Center(
                            child: CustomText(
                              text: 'Active',color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  /// second text
                  Row(
                    children: [
                      /// lift size
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
                      /// right size
                      SizedBox(
                        height: 120,width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            SizedBox(
                              height: 60,width: 60,
                              child: TimelineTile(
                                afterLineStyle: const LineStyle(
                                    color: tealLiteColor),
                                indicatorStyle: const IndicatorStyle(
                                    color: tealLiteColor),
                                endChild: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Pick'),
                                ),
                                isFirst: true,
                              ),
                            ),
                            SizedBox(
                              height: 60,width: 60,
                              child: TimelineTile(
                                beforeLineStyle: LineStyle(
                                    color: liteWhiteColor
                                ),
                                indicatorStyle: const IndicatorStyle(
                                    color: liteWhiteColor),
                                endChild: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: const Text('Drop'),
                                ),
                                isLast: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  /// cirle image  and text and date
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(photo),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            CustomText(text: 'Aleksandr V.'),
                            Spacer(),
                            CustomText(text: 'Will deliver'),
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
                            const Spacer(),
                            const CustomText(text: '24.07.22 12:30',color: liteGreyColor)
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
      ),);
  }
}