import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/controller/CreatHabitController.dart';

import '../../../../../Widgets/CustomWidgets/CustomText.dart';

class IndexFive extends StatefulWidget {
  const IndexFive({super.key});

  @override
  State<IndexFive> createState() => _IndexFiveState();
}

class _IndexFiveState extends State<IndexFive> {
  int maxLength = 300;
  int nnumber=0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatHabitController>(builder: (cont){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 400.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),


          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
                Center(
                    child: CustomText(
                      text: "Write down a reason\n"
                          "to motivate yourslf",
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.blueAccent,
                    )),
                Center(child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomText(text: "OPTIONAL",fontSize: 12,color: Colors.grey,),
                )),
                TextField(
                  minLines: 6,
                  maxLines: 6,
                  onChanged: (value){
                    setState(() {
                      nnumber=value.length;
                    });

                  },
                  controller: cont.reasonToMotivate,
                  maxLength: maxLength, // Set the maximum length here.
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      helperStyle: TextStyle(color: Colors.blueAccent),
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
                      hintText: "Because...",
                      hintStyle: TextStyle(color: Colors.grey,
                          fontSize: 16,fontWeight: FontWeight.w600)
                  ),
                ),



              ],
            ),
          ),
        ),
      );
    });
  }
}
