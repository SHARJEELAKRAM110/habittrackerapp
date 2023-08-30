import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../Widgets/CustomWidgets/CustomText.dart';
import '../../../../../controller/CreatHabitController.dart';

class IndexOne extends StatefulWidget {
   IndexOne({super.key});

  @override
  State<IndexOne> createState() => _IndexOneState();
}

class _IndexOneState extends State<IndexOne> {
  int maxLength = 35;
  int number=0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatHabitController>(builder: (cont){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h,),
          Center(
              child: CustomText(
                text: "Stack your habits",
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: Colors.blueAccent,
              )),
          SizedBox(height: 5.h,),

          Center(child: CustomText(text: "Optional",fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey,)),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: CustomText(text: "Overall time: ${cont.value.toInt()} minutes",fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green,),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 250.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "1.",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white,),
                          CustomText(text: "${cont.value.toInt()} minutes",fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    TextField(
                      onChanged: (value){
                        setState(() {
                          number=value.length;
                        });

                      },
                      controller: cont.stepOneStack,
                      maxLength: maxLength, // Set the maximum length here.
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          helperStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                          hintText: "Step 1",
                          hintStyle: TextStyle(color: Colors.grey,
                              fontSize: 16,fontWeight: FontWeight.w600)
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.local_fire_department_sharp,color: Colors.yellow.withOpacity(0.4),size: 30,),
                        SizedBox(
                            width: 240,
                            child: Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.grey.withOpacity(0.3),
                              min: 0,
                              max: 60,
                              value: cont.value, onChanged: (double change) {
                              cont.value=change;
                              cont.update();

                            },)
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.check_circle,color: Colors.grey,),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomText(text: "By creating a habit stack you can build a\nroutine that consist of multiple steps,for\nexample a mornimg routine.",color: Colors.grey,fontSize: 16,),
          ),
          SizedBox(height: 30.h,),
        ],
      );
    });
  }
}
