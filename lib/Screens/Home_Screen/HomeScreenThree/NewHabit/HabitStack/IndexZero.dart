import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

import '../../../../../controller/CreatHabitController.dart';

class IndexZero extends StatefulWidget {
  const IndexZero({super.key});

  @override
  State<IndexZero> createState() => _IndexZeroState();
}

class _IndexZeroState extends State<IndexZero> {
  int maxLength = 40;
  List<int> indexs = [0];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CreatHabitController(),
        builder: (cont){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.purple),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                        child: CustomText(
                          text: "Put in a name for",
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.blueAccent,
                        )),
                    Center(
                        child: CustomText(
                          text: "your habit",
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.blueAccent,
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    TextFormField(

                      controller: cont.habitName,
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
                          hintText: "Your habit",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      text:
                      "Start off by making your habit very\n easy to achieve.By doing this you\nwon't get burned out and give up.",
                      color: Colors.white,
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              height: 400.h,
              width: double.infinity,
            ),
          ),
        ],
      );
    });
  }
}
