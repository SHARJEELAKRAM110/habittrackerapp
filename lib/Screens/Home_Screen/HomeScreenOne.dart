import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                  text: "Hey,",
                  fontSize: 20.sp,
                  color: Colors.black.withOpacity(0.6),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 180),
                  child: Container(
                    height: 45.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8C96FF),
                    ),
                    child: Center(
                      child: Icon(Icons.card_giftcard_outlined),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Color(0xff8C96FF),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "2 DAYS OF ACCOUNTABILITY",
                        fontSize: 12,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.white,
                              ),
                              Text(
                                "Sat",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.white,
                              ),
                              Text(
                                "Sun",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: "GREAT JOB!",
                                  color: Color(0xffFFFFFF).withOpacity(0.6)),
                              CustomText(
                                  text: "TAP FOR MORE INFO",
                                  color: Colors.white.withOpacity(0.6)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomText(
                  text: "TODAY", fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Color(0xff8C96FF),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                          child: Icon(
                        Icons.check_circle_outlined,
                        size: 120,
                      )),
                    ),
                    CustomText(
                        text: "Amazing! All done for today",
                        fontSize: 20,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomText(
                  text: "ON THE NEXT DAYS",
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                          text: "10:32",
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dumblee.jpg",
                            height: 30.h,
                            width: 30.w,
                          ),
                          SizedBox(width: 15.w,),
                          CustomText(text: "dumbble press" ,fontSize: 16,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
