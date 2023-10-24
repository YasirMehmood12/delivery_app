import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';

class OutOfDeliveryScreen extends StatefulWidget {
  const OutOfDeliveryScreen({super.key});

  @override
  State<OutOfDeliveryScreen> createState() => _OutOfDeliveryScreenState();
}

class _OutOfDeliveryScreenState extends State<OutOfDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        foregroundColor: blackColor,
        backgroundColor: whiteColor,
        title: const CustomText(text: 'Orders', fontSize: 19),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 29,
              width: 29,
              decoration: const BoxDecoration(
                  color: yellowColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(notification))),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 29,
              width: 29,
              decoration: const BoxDecoration(
                  color: yellowColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(profile))),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Container(
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  /// text text
                  Row(
                    children: [
                      /// lift size
                      SizedBox(
                        height: 120,width: 210,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: liteWhiteColor,
                                          width: 2
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(Icons.circle,color: greenColor,size: 8),
                                    )),
                                const SizedBox(width: 12),
                                const Column(
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
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_outlined,color: greenColor),
                                SizedBox(width: 12),
                                Column(
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
                        height: 120,width: 100,
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
                                beforeLineStyle: const LineStyle(
                                    color: liteWhiteColor
                                ),
                                indicatorStyle: const IndicatorStyle(
                                    color: liteWhiteColor),
                                endChild: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Drop'),
                                ),
                                isLast: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
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
                  ),
                ],
              ),
            ),
            10.heightBox,
            Container(
              height: 130, width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Row(
                children: [
                  /// lift size
                  SizedBox(
                    height: 120,width: 210,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: liteWhiteColor,
                                      width: 2
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(Icons.circle,color: greenColor,size: 8),
                                )),
                            const SizedBox(width: 12),
                            const Column(
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
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined,color: greenColor),
                            SizedBox(width: 12),
                            Column(
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
                    height: 120,width: 100,
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
                            beforeLineStyle: const LineStyle(
                                color: liteWhiteColor
                            ),
                            indicatorStyle: const IndicatorStyle(
                                color: liteWhiteColor),
                            endChild: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text('Drop'),
                            ),
                            isLast: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            30.heightBox,
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: yellowColor),
                child: const Center(
                  child: CustomText(
                    text: 'Active',color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
