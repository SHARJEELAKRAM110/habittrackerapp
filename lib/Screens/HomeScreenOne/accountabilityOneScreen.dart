import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Widgets/CustomWidgets/CustomText.dart';

class accountabilityOneScreen extends StatefulWidget {
  final String name;

  const accountabilityOneScreen({Key?key,this.name=""}):super(key: key);

  @override
  State<accountabilityOneScreen> createState() => _accountabilityOneScreenState();
}

class _accountabilityOneScreenState extends State<accountabilityOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.lime.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "3 DAYS CHECK-IN STREAK",
                          fontSize: 12,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
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
                                  color: Colors.black,
                                ),
                                Text(
                                  widget.name,
                                  style: TextStyle(
                                      color: Colors.black),
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
                                  color: Colors.black,
                                ),
                                Text(
                                  "Sun",
                                  style: TextStyle(
                                      color: Colors.black),
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
                                  color: Colors.black,
                                ),
                                Text(
                                  "Mon",
                                  style: TextStyle(
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 170.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Icon(Icons.local_fire_department_rounded,size: 50,)
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.lime.withOpacity(0.4),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomText(
                        text: "3 DAYS CHECK-IN STREAK",
                        fontSize: 12,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
              CustomText(text: "  How the daily check-in works",color: Colors.white,fontWeight: FontWeight.w800,fontSize: 18,),
              SizedBox(height: 5.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Everytime you open the Prize Winning app\nyou will gain another checkmark in your\nacountability streak.",color: Colors.white.withOpacity(0.3),fontWeight: FontWeight.w500,fontSize: 16,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "By simply opening the app every day you\nprove to yourself that you're still\naccountable for your goals and on the\nright path.",color: Colors.white.withOpacity(0.3),fontWeight: FontWeight.w500,fontSize: 16,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "You are establishing the meta-habit of\nchecking in on your goals, which is super\n improtant in order to not give up after a\nday hasn't gone perfectly.",color: Colors.white.withOpacity(0.3),fontWeight: FontWeight.w500,fontSize: 16,),
              ),

SizedBox(height: 130.h,),
              SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Get.back();
                  },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))
                      ),
                      child: CustomText(text: "UNDERSTOOD",fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black,)))



            ],
          ),
        ),
      ),
    );
  }
}
