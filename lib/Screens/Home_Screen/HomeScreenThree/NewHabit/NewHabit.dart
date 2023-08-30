import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Widgets/CustomWidgets/CustomText.dart';
import 'Habit/Habit.dart';
import 'HabitStack/habitStack.dart';

class NewHabit extends StatefulWidget {
  const NewHabit({super.key});

  @override
  State<NewHabit> createState() => _NewHabitState();
}

class _NewHabitState extends State<NewHabit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h,),
          IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon:Icon (Icons.cancel_outlined,size: 25,)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                    text: "Choose habit type",
                    fontSize: 25,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w600,
                    color: Color(0xff8C96FF)),


                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: (){
                    Get.to(Habit());
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Color(0xff8C96FF),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10,bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Habit",
                              fontSize: 16,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomText(text: "A normal habit that doesn't require\nmultiple steps (recommended)" ,fontSize: 14,color: Colors.black.withOpacity(0.6),)

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(NewHabitStack());
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Color(0xff8C96FF),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10,bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Habit Stack",
                              fontSize: 16,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomText(text: "A habit that consists of multiple\nsteps, like a morning routine" ,fontSize: 14,color: Colors.black.withOpacity(0.6),),
                            SizedBox(height: 10.h,),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(height: 230.h,
                                  width: 250.w,
                                  child: Card(
                                    color: Colors.black,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomText(text: "40 minutes",color: Colors.white,),
                                              Icon(Icons.flag,size: 25,color:Color(0xff8C96FF) ,)
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset("assets/images/water.jpg",height: 25,width: 25,),
                                                  SizedBox(width: 5.w,),
                                                  CustomText(text: "Drink water",color: Colors.white,),
                                                ],
                                              ),
                                              CustomText(text: "1 min.",color: Colors.grey,)
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset("assets/images/bed.jpg",height: 25,width: 25,),
                                                  SizedBox(width: 5.w,),
                                                  CustomText(text: "Make my bed",color: Colors.white,),
                                                ],
                                              ),
                                              CustomText(text: "3 min.",color: Colors.grey,)
                                            ],
                                          ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset("assets/images/yogaa.jpg",height: 25,width: 25,),
                                                  SizedBox(width: 5.w,),
                                                  CustomText(text: "Meditate",color: Colors.white,),
                                                ],
                                              ),
                                              CustomText(text: "10 min.",color: Colors.grey,)
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset("assets/images/uniform.jpg",height: 25,width: 25,),
                                                  SizedBox(width: 5.w,),
                                                  CustomText(text: "Get dressed",color: Colors.white,),
                                                ],
                                              ),
                                              CustomText(text: "5 min.",color: Colors.grey,)
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset("assets/images/showerr.jpg",height: 25,width: 25,),
                                                  SizedBox(width: 5.w,),
                                                  CustomText(text: "Shower",color: Colors.white,),
                                                ],
                                              ),
                                              CustomText(text: "10 min.",color: Colors.grey,)
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset("assets/images/sunlight.jpg",height: 25,width: 25,),
                                                  SizedBox(width: 5.w,),
                                                  CustomText(text: "Get some sunlight",color: Colors.white,),
                                                ],
                                              ),
                                              CustomText(text: "11 min.",color: Colors.grey,)
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
