import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Widgets/CustomWidgets/CustomText.dart';
import '../HomeScreenFive/HomeScreenFive.dart';
import '../HomeScreenOne/HomeScreenOne.dart';

class SwipeButtonScreen extends StatefulWidget {
  const SwipeButtonScreen({super.key});

  @override
  State<SwipeButtonScreen> createState() => _SwipeButtonScreenState();
}

class _SwipeButtonScreenState extends State<SwipeButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0,right: 20,left: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 35.h,
                width: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child:
                CustomText(text: "LEVEL  1",fontWeight: FontWeight.w500,fontSize: 12,),
                ),
              ),
            ),
            SizedBox(height: 20.h,),

            Center(child: Image.asset("assets/images/climb.jpg",height: 200.h,width: 200.w,)),
            SizedBox(height: 20.h,),
            CustomText(text: "You just climbed up a level",fontWeight: FontWeight.w600,fontSize: 24,color: Colors.white,),
            SizedBox(height: 10.h,),
            CustomText(text: "By completing more habits you reach new\n"
                "levels, which unlock the frist two audio\n"
                "lessons and more articles about_\n"
                "improvement and habits.",fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white,),
SizedBox(height: 80.h,),
            SizedBox(
              height: 45.h,
              width: double.infinity,
              child: MaterialButton(onPressed: (){
                Get.back();
              },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              color: Colors.deepPurple.withOpacity(0.3),
                child: CustomText(text: "CHECK IT OUT !",fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white,),
              ),
            ),
            SizedBox(height: 20.h,),
            InkWell(
              onTap: (){
                Get.back();
              },
                child: CustomText(text: "LATER",fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white,)),

          ],
        ),
      ),
    );
  }
}
