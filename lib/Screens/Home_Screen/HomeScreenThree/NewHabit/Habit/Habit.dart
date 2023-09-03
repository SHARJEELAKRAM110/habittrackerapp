import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

import '../../../../../controller/CreatHabitController.dart';
import '../HabitStack/IndexFive.dart';
import '../HabitStack/IndexFour.dart';
import '../HabitStack/IndexSix.dart';
import '../HabitStack/IndexThree.dart';
import '../HabitStack/IndexZero.dart';

class Habit extends StatefulWidget {
  const Habit({super.key});

  @override
  State<Habit> createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  List<Widget> screens=[
    IndexZero(),
    IndexThree(),
    IndexFour(),
    IndexFive(),
    IndexSix()
  ];
  int selectedIndex=0;

  List<bool> isSelected=[true,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init:CreatHabitController(),
        builder: (cont){
          return Scaffold(
            backgroundColor: Colors.deepPurple.withOpacity(0.3),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 30.h,right: 20.w,left: 20),
                    child: InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Icon(Icons.close,color: Colors.grey,)),
                  ),
                  SizedBox(height: 10.h,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20, left: 40),
                    child: SizedBox(
                      height: 21.h,
                      child: ListView.separated(
                        itemCount:5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 20.h,
                            width: 40.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.check_circle,
                                color:isSelected[index]==true?Colors.green:Colors.grey,
                                size: 15,
                              ),
                            ),
                          );
                        }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 20.w,);
                      },),
                    ),
                  ),
                  screens[selectedIndex],
                  SizedBox(height: 40.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: (){
                              if(selectedIndex==0){
                                Get.back();
                              }else {
                                isSelected[selectedIndex] = false;
                                selectedIndex = selectedIndex -1;
                                setState(() {});
                              }
                            },
                            child: Icon(Icons.arrow_back,color: Colors.grey,size: 25,)),
                        SizedBox(
                          height: 40.h,
                          width: 250.w,
                          child: MaterialButton(onPressed: (){
                            if(selectedIndex==5){
                              cont.saveHabit();
                            }else{
                              selectedIndex=selectedIndex+1;
                              isSelected[selectedIndex]=true;
                              setState(() {
                              });
                            }

                          },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            color: Colors.green,
                            child: CustomText(text: "Continue",fontSize: 16,fontWeight: FontWeight.w600,),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),

                ],
              ),
            ),
          );
        });
  }
}
