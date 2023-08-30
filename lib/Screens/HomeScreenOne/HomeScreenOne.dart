import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

import '../../controller/HomeController.dart';
import 'GiftScreen.dart';
import 'ScreenOnehdfnf.dart';
import 'accountabilityOneScreen.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  final homeCont=Get.put(HomeController());
  @override
  void initState() {
    homeCont.fetchUserData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
        builder: (cont){
          
      return   Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h,),
                Row(
                  children: [
                    CustomText(
                      text: "Hey,",
                      fontSize: 20.sp,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 180),
                      child: InkWell(
                        onTap: (){
                          Get.to(GiftScreen());
                        },
                        child: Container(
                          height: 45.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff8C96FF),
                          ),
                          child: Center(
                            child: Icon(Icons.card_giftcard_outlined),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: (){
                    Get.to(accountabilityOneScreen(name: "Sat",));
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Color(0xff8C96FF),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "2 DAYS OF ACCOUNTABILITY",
                              fontSize: 12,
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
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
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Sat",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6)),
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
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Sun",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 80.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: "GREAT JOB!",
                                        color: Color(0xffFFFFFF).withOpacity(0.6)),
                                    CustomText(
                                        text: "TAP FOR MORE INFO",
                                        color: Colors.white.withOpacity(0.6)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomText(
                      text: "TODAY", fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Color(0xff8C96FF),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(
                              child: Icon(
                                Icons.check_circle_outlined,
                                size: 120,
                              )),
                        ),
                        CustomText(
                            text: "Amazing! All done for today",
                            fontSize: 20,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomText(
                      text: "ON THE NEXT DAYS",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 400.h,
                  width: double.infinity,
                  child: StreamBuilder(
                    stream: cont.stream, // The stream you want to listen to
                    builder: (BuildContext context, snapshot) {
                      if (snapshot.hasData) {
                        // Use snapshot.data to access the latest data from the stream
                        return ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 1,
                            itemBuilder: (context,index){
                              return  InkWell(
                                onTap: (){
                                  Get.to(ScreenOnehdfnf());

                                },
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0),
                                            child: CustomText(
                                                text: "${snapshot.data['timeSet']}",
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(width: 15.w,),
                                              CustomText(text: "${snapshot.data['habitName']}" ,fontSize: 16,)
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );

                            });
                      } else if(snapshot.hasError){
                        return Container();

                      }else if(snapshot.data==null){
                        return Container();

                      }else {// Return a placeholder or loading widget while waiting for data
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );

        });
      
  }
}
