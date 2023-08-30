import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:habit_tracker/Screens/HomeScreenFive/FiveNextScreen.dart';
import 'package:habit_tracker/Screens/HomeScreenFive/HomeScreenFive.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

class GridViewLessons extends StatefulWidget {
  const GridViewLessons({super.key});

  @override
  State<GridViewLessons> createState() => _GridViewLessonsState();
}

class _GridViewLessonsState extends State<GridViewLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap:(){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,)),
                  SizedBox(width: 90.w,),
                  CustomText(text: 'All Lessons',fontSize: 18,fontWeight: FontWeight.w800,)
                ],
              ),
            ),
            SizedBox(height: 20.h,),
      Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 5, // Horizontal space between items
            mainAxisSpacing: 10, // Vertical space between items
          ),
          itemBuilder: (BuildContext context, int index) {
            // Create and return the widget for each item in the grid
            // The 'index' parameter represents the current item index in the list
            return   InkWell(
              onTap: (){
                Get.to(FiveNextScreen(index: index ,));
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children:[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),

                        child: Image.asset(
                          imageList[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: imageList[index].color,
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10))
                      ),
                      height:60,
                      width:double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(text: imageList[index].text,fontSize: 14,color: Colors.white,),
                            SizedBox(height: 5,),
                            CustomText(text:imageList[index].textTwo,fontSize: 10,color: Colors.white.withOpacity(0.6),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]

              ),
            );
            },
          itemCount: 7, // Total number of items in the grid
        ),
      ),

      ],
        ),
      ),
    );
  }
}
