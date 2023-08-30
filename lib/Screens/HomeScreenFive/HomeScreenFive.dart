import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../LogOutScreen.dart';
import 'FiveNextScreen.dart';
import 'GridViewScreenFive.dart';

List<TextImages> imageList = [
  TextImages(
      text: "1. Tiny Habits",
      image: "assets/images/flower.jpg",
      textTwo: "Why easy is better then dificult",
      color: Colors.green.shade400),
  TextImages(
      text: "2. Mindset",
      image: "assets/images/seaview.jpg",
      textTwo: "Building a growth mindset",
      color: Colors.brown.withOpacity(0.3)),
  TextImages(
      text: "3. Habit Hacks",
      image: "assets/images/moutains.jpg",
      textTwo: "Saying goodbye to procrastination",
      color: Colors.grey.withOpacity(0.5)),
  TextImages(
      text: "4. Your Identity",
      image: "assets/images/identity.jpg",
      textTwo: "How long term changes happen",
      color: Colors.yellowAccent.shade400),
  TextImages(
      text: "5. The Habit Loop",
      image: "assets/images/loop.jpg",
      textTwo: "Habits and your brain",
      color: Colors.brown.shade300),
  TextImages(
      text: "6. Your Environment",
      image: "assets/images/envirnoment.jpg",
      textTwo: "Going beyond willpower",
      color: Colors.redAccent.shade100),
  TextImages(
      text: "7. Habit Waves",
      image: "assets/images/waterdrop.jpg",
      textTwo: "Creating perfect days",
      color: Colors.blue.shade400),
];

class HomeScreenFive extends StatefulWidget {
  const HomeScreenFive({super.key});

  @override
  State<HomeScreenFive> createState() => _HomeScreenFiveState();
}

class _HomeScreenFiveState extends State<HomeScreenFive> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Lessons",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(GridViewLessons());
                        },
                        child: Icon(
                          Icons.widgets_outlined,
                          size: 25,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(LogOutScreen());
                        },
                        child: Icon(
                          Icons.vertical_distribute_rounded,
                          size: 25,
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 350,
                  aspectRatio: 2.0,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                    // Callback triggered whenever the current page index changes
                    // You can use this to update the state or perform other actions
                  },
                  scrollDirection: Axis.horizontal,
                ),
                items: imageList.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () {
                          Get.to(FiveNextScreen(
                            index: activeIndex,
                          ));
                        },
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    imageUrl.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: imageUrl.color,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                height: 60,
                                width: double.infinity,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: imageUrl.text,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: imageUrl.textTwo,
                                        fontSize: 10,
                                        color: Colors.white.withOpacity(0.6),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            buildIndicator(),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageList.length,
        effect: JumpingDotEffect(
            dotColor: Colors.grey,
            activeDotColor: Color(0xff8C96FF),
            dotHeight: 8.h,
            dotWidth: 15.w),
      );
}

class TextImages {
  String text;
  String textTwo;
  String image;
  Color color;

  TextImages(
      {required this.color,
      required this.text,
      required this.image,
      required this.textTwo});
}
