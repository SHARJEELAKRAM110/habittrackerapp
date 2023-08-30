import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';
import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


class HomeScreenFour extends StatefulWidget {

  const HomeScreenFour({super.key});

  @override
  State<HomeScreenFour> createState() => _HomeScreenFourState();
}

class _HomeScreenFourState extends State<HomeScreenFour> {

  DateTime dateTime = DateTime.now();

  int days = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h,),
              CustomText(
                text: "Reflection", fontSize: 25, fontWeight: FontWeight.w600,),
              SizedBox(height: 20.h,),

              Row(
                children: [
                  const Expanded(
                      child: Text(
                        'Scheduled Workout',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  InkWell(
                    onTap: () =>
                        Get.bottomSheet(
                            SfDateRangePicker(
                              selectionMode: DateRangePickerSelectionMode.range,
                              view: DateRangePickerView.month,
                              onSelectionChanged: onSelectionChanged,
                            ),
                            backgroundColor: Colors.white),
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0XFFEDF3FF),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.calendar_today,
                            color: Color(0XFF0342E9),
                          ),
                        )),
                  )
                ],
              ),
              CalenderPicker(
                dateTime,
                daysCount: days,
                // ignore: avoid_print
                enableMultiSelection: true,
                // ignore: avoid_print
                multiSelectionListener: (value) => print(value),
                selectionColor: const Color(0XFF0342E9),
                selectedTextColor: Colors.white,
              ),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Card(
                  color: Color(0xff8C96FF),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: CustomText(
                      text: "Tap to reflect on your day",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,)),

                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Card(
                  color: Colors.black,
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(

                              style: DefaultTextStyle
                                  .of(context)
                                  .style,
                              children: <TextSpan>[
                                TextSpan(text: "Your mood on",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white
                                  ),
                                ),
                                TextSpan(
                                  text: ' Jul 18,2023',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Row(
                            children: [
                              CustomText(text: "Nothing here yet.",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,),
                              Image.asset("assets/images/smile.jpg", height: 60,
                                width: 60,),
                            ],
                          )
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Card(
                  color: Color(0xff8C96FF).withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Your Thoughts",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,),
                        SizedBox(height: 10.h,),
                        CustomText(text: "-",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,),
                        SizedBox(height: 10.h,),

                        CustomText(text: "Your Feelings",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,),
                        SizedBox(height: 20.h,),

                        CustomText(text: "Your activities",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,),
                        SizedBox(height: 5.h,),
                        CustomText(text: "No activities logged.",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,),
                        SizedBox(height: 5.h,),


                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Card(
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Your last 12 weeks",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,),
                        SizedBox(height: 100.h,),
                        CustomText(
                          text: "1    2   3   4    5    6    7    8    9    10    11    12",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,),


                      ],
                    ),

                  ),
                ),
              ),

              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Card(
                  color: Color(0xff8C96FF),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomText(text: "AVERAGE MOOD",
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,),
                            CustomText(text: "No data",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,),
                          ],
                        ),
                        Column(
                          children: [
                            CustomText(text: "0.0",
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,),

                          ],

                        )
                      ],
                    ),

                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      setState(() {
        dateTime = args.value.startDate;

        if (args.value.endDate != null) {
          different(first: args.value.startDate, last: args.value.endDate);
          // ignore: avoid_print
          print(args.value.startDate);
          // ignore: avoid_print
          print(args.value.endDate);
        }
      });
    }
  }

  different({DateTime? first, DateTime? last}) async {
    int data = last!.difference(first!).inDays;
    // ignore: avoid_print

    setState(() {
      data++;
      days = data;
      // ignore: avoid_print
      print(data);
    });
  }

}
