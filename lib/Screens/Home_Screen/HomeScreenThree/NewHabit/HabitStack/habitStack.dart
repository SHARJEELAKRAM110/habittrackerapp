import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenThree/NewHabit/HabitStack/IndexOne.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

import '../../../../../controller/CreatHabitController.dart';
import 'IndexFive.dart';
import 'IndexFour.dart';
import 'IndexSix.dart';
import 'IndexThree.dart';
import 'IndexZero.dart';

class NewHabitStack extends StatefulWidget {
  const NewHabitStack({super.key});

  @override
  State<NewHabitStack> createState() => _NewHabitStackState();
}

class _NewHabitStackState extends State<NewHabitStack> {
  List<Widget> screens=[
    IndexZero(),
    IndexOne(),
    IndexThree(),
    const IndexFour(),
    IndexFive(),
    IndexSix()
  ];
int selectedIndex=0;

List<bool> isSelected=[true,false,false,false,false,false];
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
                padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
                child: SizedBox(
                  height: 21.h,
                  child: ListView.separated(
                    itemCount:6,
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
                    return SizedBox(width: 14.w,);
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
                        if(cont.habitName.text.isEmpty&&selectedIndex==0){
                          validateAndShowToast(context);
                        }else {
                          if (selectedIndex == 5) {
                            cont.saveHabit();
                          } else {
                            selectedIndex = selectedIndex + 1;
                            isSelected[selectedIndex] = true;
                            setState(() {});
                          }
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
  void validateAndShowToast(BuildContext context) {

      showModalBottomSheet(context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
          ),
          builder: (context){
        return SizedBox(
          height: 200.h,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 30,left: 30,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "Please enter a valid name for your\n"
                      "habit",fontSize: 14,color: Colors.black,),
                  SizedBox(height: 20.h,),
                  SizedBox(
                    height: 40.h,
                    width: 200.w,
                    child: MaterialButton(onPressed: (){
                      Get.back();
                    },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),

                      color: Colors.black,
                      child: Text("OK",style: TextStyle(fontSize: 16,color: Colors.white),),),
                  )
                ],
              ),
            ),
          ),
        );
      });
      // showToastMessage('Text field is empty!');
    }
  }

