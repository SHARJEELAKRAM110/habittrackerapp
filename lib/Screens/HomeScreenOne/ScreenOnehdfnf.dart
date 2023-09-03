import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:get/get.dart';

import '../../Widgets/CustomWidgets/CustomText.dart';
import '../HomeScreenTwo/EditIconScreen.dart';
import '../HomeScreenTwo/SwipeButtonScreen.dart';

class ScreenOnehdfnf extends StatefulWidget {
  const ScreenOnehdfnf({super.key});

  @override
  State<ScreenOnehdfnf> createState() => _ScreenOnehdfnfState();
}

class _ScreenOnehdfnfState extends State<ScreenOnehdfnf> {
  bool isA=false;
  bool isB=false;
  bool isC=false;
  bool isD=false;
  bool isE=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0,left: 20,top: 20),
        child: Column(
          children: [
            Center(
              child: CustomText(text:"Edit your last 5 days",fontSize: 12,
                color: Colors.grey,fontWeight: FontWeight.w600,),
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Get.to(EditIconScreen());
                    },
                    child: Icon(Icons.edit,size: 25,color: Colors.grey,)),
                Container(
                  child:Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox( height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            value: isA,
                            onChanged: (bool? value) {
                              setState(() {
                                isA = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            value: isB,
                            onChanged: (bool? value) {
                              setState(() {
                                isB = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            value: isC,
                            onChanged: (bool? value) {
                              setState(() {
                                isC = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            value: isD,
                            onChanged: (bool? value) {
                              setState(() {
                                isD = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            value: isE,
                            onChanged: (bool? value) {
                              setState(() {
                                isE = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 45.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff8C96FF).withOpacity(0.3),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                    child: Icon(Icons.close,size: 30,color: Colors.grey,)),
              ],
            ),
            SizedBox(height: 150.h,),
            Center(
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff8C96FF).withOpacity(0.3),

                ),
              ),
            ),
            SizedBox(height: 150.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SwipeButton(
                  width: 250,
                  child: const Text(
                    "Swipe to complete",
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                  onSwipe: () {
                  Get.to(SwipeButtonScreen());
                  },
                ),
                Icon(Icons.timer,color:Colors.black54,size: 40,),
              ],
            )

          ],
        ),
      ),
    );
  }
}
