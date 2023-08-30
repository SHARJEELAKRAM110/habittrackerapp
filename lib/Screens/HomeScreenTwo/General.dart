import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:habit_tracker/Widgets/Round%20Button.dart';

import '../../Widgets/CustomWidgets/CustomText.dart';
import '../HomeScreenOne/GiftScreen.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100.h,
                  width: 100.w,
                  child: Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 18,right: 8,bottom: 8),
                      child: Column(
                        children: [
                          CustomText(text: "0",fontSize: 35.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                          CustomText(text: "OVERALL DONE",fontSize: 10.sp,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.4),),


                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  width: 210.w,
                  child: Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 18,right: 8,),
                      child: Column(
                        children: [
                          CustomText(text: "Level 0",fontSize: 35.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                          CustomText(text: "Your Rank",fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.4),),


                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Color(0xff8C96FF),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "COMPLETED HABITS",fontSize: 12.sp,fontWeight: FontWeight.w600,),
                          CustomText(text: "WEEK",fontSize: 12.sp,
                            fontWeight: FontWeight.w600,color: Colors.deepOrange,fontFamily: "Rubik",),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                color: Colors.black38
                            ),
                            child: Center(child: CustomText(text: "0",fontSize: 16,color: Colors.grey,)),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                            child: Center(child: CustomText(text: "0",fontSize: 16,color: Colors.grey,)),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                            child: Center(child: CustomText(text: "0",fontSize: 16,color: Colors.grey,)),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                            child: Center(child: CustomText(text: "0",fontSize: 16,color: Colors.grey,)),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                            child: Center(child: CustomText(text: "0",fontSize: 16,color: Colors.grey,)),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Colors.black38
                            ),
                            child: Center(child: CustomText(text: "0",fontSize: 16,color: Colors.grey,)),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),

                                color: Colors.black38
                            ),
                            child: Center(child: CustomText(text: "0",fontSize: 16,color: Colors.grey,)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "Less",fontSize: 10,
                            fontWeight: FontWeight.w500,color: Colors.black,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              SizedBox(width: 15.w,),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black38,
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue.withOpacity(0.4)
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue.withOpacity(0.9)
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 16.w,),

                              CustomText(text: "More",fontSize: 10,
                                fontWeight: FontWeight.w500,color: Colors.black,),
                            ],
                          )
                        ],
                      ),

                      SizedBox(height: 15.h,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "DAILY MOOD",fontSize: 12.sp,fontWeight: FontWeight.w600,),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                color: Colors.black38
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                color: Colors.black38
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black38
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),

                                color: Colors.black38
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "Worse",fontSize: 10,
                            fontWeight: FontWeight.w500,color: Colors.black,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              SizedBox(width: 10.w,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.4)
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.yellow.withOpacity(0.9)
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 5.w,),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                height: 10,
                                width: 38,
                              ),
                              SizedBox(width: 6.w,),

                              CustomText(text: "Better",fontSize: 10,
                                fontWeight: FontWeight.w500,color: Colors.black,),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h,),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 250.h,
              child: Card(
                color: Color(0xff8C96FF),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text:"Get even better insights",fontSize: 18,fontWeight: FontWeight.w600,),
                      Icon(Icons.mobile_friendly_outlined,size: 100,),
                      InkWell(
                        onTap: (){
                          Get.to(GiftScreen());
                        },
                        child: SizedBox(
                          height: 40.h,
                          width: 150.w,
                          child: RoundButton(title: "Continue", onpress: (){},
                          buttonColor: Colors.black,textColor: Colors.white,
                          ),
                        ),
                      )

                    ],
                  ),
                )
              ),
            ),
            SizedBox(height: 15.h,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 250.h,
              child: Card(
                color: Color(0xff8C96FF),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text:"Get even better insights",fontSize: 18,fontWeight: FontWeight.w600,),
                      Icon(Icons.mobile_friendly_outlined,size: 100,),
                      InkWell(
                        onTap: (){
                          Get.to(GiftScreen());
                        },
                        child: SizedBox(
                          height: 40.h,
                          width: 150.w,
                          child: RoundButton(title: "Continue", onpress: (){},
                          buttonColor: Colors.black,textColor: Colors.white,
                          ),
                        ),
                      )

                    ],
                  ),
                )
              ),
            ),



          ],
        ),
      ),

    );
  }
}
