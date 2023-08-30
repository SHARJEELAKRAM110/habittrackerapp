import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import '../../../../../Widgets/CustomWidgets/CustomText.dart';
import '../../../../../controller/CreatHabitController.dart';

class IndexSix extends StatefulWidget {
  const IndexSix({super.key});

  @override
  State<IndexSix> createState() => _IndexSixState();
}

class _IndexSixState extends State<IndexSix> {
  final cont=Get.put(CreatHabitController());
  DateTime _selectedTime = DateTime.now();
  Widget widgetTimer() {
    return new TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: TextStyle(fontSize: 24, color: Colors.deepOrange),
      highlightedTextStyle: TextStyle(fontSize: 18, color: Colors.yellow),
      spacing: 30,
      itemHeight: 50,
      isForce2Digits: true,
      onTimeChange: (time) {
        cont.timeSet=time.toString();
        setState(() {
          _selectedTime = time;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          height: 400.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                      child: CustomText(
                    text: "Set a reminder",
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.blueAccent,
                  )),
                  SizedBox(
                    height: 40.h,
                  ),
                  widgetTimer(),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                        child: CustomText(
                      text: "or",
                      fontSize: 12,
                      color: Colors.grey,
                    )),
                  ),
                  Center(
                    child: SizedBox(
                      height: 25.h,
                      width: 120.w,
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.red,
                        child: CustomText(
                          text: "Don't remind me",
                          fontSize: 10,
                          color: Colors.white,
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
    );
  }
}
