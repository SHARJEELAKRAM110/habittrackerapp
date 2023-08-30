import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Widgets/CustomWidgets/CustomText.dart';
import 'NewHabit/NewHabit.dart';
import 'StartReflection.dart';

class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({super.key});

  @override
  State<HomeScreenThree> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(20))

        ),
          width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Get.to(NewHabit());
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset("assets/images/habit.jpg",height: 80.h,width: 150.w,),
                  ),
                  CustomText(text:"Create new habit",fontWeight: FontWeight.w600,fontSize: 18,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                height: 10,
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(StartReflection());
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset("assets/images/reflection.jpg",height: 80.h,width: 150.w,),
                  ),
                  CustomText(text:"Start reflection",fontWeight: FontWeight.w600,fontSize: 18,)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
