import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widgets/custom_text.dart';

class NavigateScreen extends StatefulWidget {
  const NavigateScreen({super.key});

  @override
  State<NavigateScreen> createState() => _NavigateScreenState();
}

class _NavigateScreenState extends State<NavigateScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(map),fit: BoxFit.cover)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.452,),
                    Container(
                        height: 30,width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor, boxShadow: const [BoxShadow(
                            color: liteWhiteColor,
                            blurRadius: 2)]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(height: 10,width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greenColor)),
                            const CustomText(
                              text: 'Your order is on the way',
                            ),
                          ],
                        )
                    ),
                    Container(
                      height: 290,width: double.infinity,
                      decoration: const BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 14),
                          const CustomText(text: 'Order #PIZ6754' ,color: whiteColor),
                          const SizedBox(height: 11),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              height: 230,width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: whiteColor,
                              ),
                              child: Column(
                                children: [
                                  10.heightBox,
                                  ListTile(
                                      leading: const CircleAvatar(
                                          backgroundImage: AssetImage(photo2),
                                          radius: 25),
                                      title: Center(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const CustomText(text: 'Rajesh Kumar'),
                                            RatingBar.builder(
                                                itemSize: 15,
                                                itemCount: 5,
                                                initialRating: 4,
                                                maxRating: 1,
                                                onRatingUpdate: (value) {},
                                                itemBuilder: (BuildContext context, int index) => const Icon(Icons.star,color: yellowColor,)
                                            ),
                                          ],
                                        ),
                                      ),
                                      trailing: Container(
                                        height: 50,width: 100,
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 45,
                                                width: 45,
                                                decoration: const BoxDecoration(
                                                    color: liteWhite2Color,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(image: AssetImage(chatYellow),)
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 45,
                                                width: 45,
                                                decoration: const BoxDecoration(
                                                    color: liteWhite2Color,shape: BoxShape.circle,
                                                    image: DecorationImage(image: AssetImage(call))
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) => _containerCircle()),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {},
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
                                  10.heightBox
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
  Widget _containerCircle (){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.play_arrow),
            const CustomText(text: '- - - - - -',fontWeight: FontWeight.w500,fontSize: 16),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: liteWhiteColor,
                      width: 2
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(Icons.circle,color: yellowColor,size: 12),
                )),
            const CustomText(text: '- - - -',fontWeight: FontWeight.w500,fontSize: 16),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: liteWhiteColor,
                      width: 2
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(Icons.circle,color: yellowColor,size: 12),
                )),
            const CustomText(text: '- - - -',fontWeight: FontWeight.w500,fontSize: 16),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: liteWhiteColor,
                      width: 2
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(Icons.circle,color: yellowColor,size: 12),
                )),
            const CustomText(text: '- - - - - - -',fontWeight: FontWeight.w500,fontSize: 16),
            Container(
              height: 50,width: 50,
                decoration: const BoxDecoration(
                  color: yellowColor,
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(Icons.location_on,color: whiteColor,)
                )),
          ],
        ),
        Container(
          height: 40,width: 240,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              35.widthBox,
              const Column(
                children: [
                  Icon(Icons.location_on_sharp,color: fulRedColor),
                  CustomText(text: '324')
                ],
              ),
              0.widthBox,
              const Column(
                children: [
                  Icon(Icons.location_on_sharp,color: fulRedColor),
                  CustomText(text: '624')
                ],
              ),
              0.widthBox,
              const Column(
                children: [
                  Icon(Icons.location_on_sharp,color: fulRedColor),
                  CustomText(text: '824')
                ],
              ),
              0.widthBox,
            ],
          ),
        )
      ],
    );
  }
}
