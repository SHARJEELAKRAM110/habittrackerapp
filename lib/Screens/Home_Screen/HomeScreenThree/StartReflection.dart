import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/CustomWidgets/CustomText.dart';

class StartReflection extends StatefulWidget {
  const StartReflection({super.key});

  @override
  State<StartReflection> createState() => _StartReflectionState();

}
PageController? _pageController;
int _currentPage = 0;
class _StartReflectionState extends State<StartReflection> {
  bool _isChecked=false;
  PageController? _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:            PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "July 18, 2023",
                          fontSize: 25.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                            },
                            icon:Icon(Icons.close,color: Colors.grey,))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Color(0xff8C96FF),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "4 DAYS CHECK-IN STREAK",
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
                                      "Sat",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
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
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),SizedBox(
                                  width: 5.w,
                                ),
                                const Column(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "Mon",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),SizedBox(
                                  width: 5.w,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "Tue",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 130.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Icon(Icons.local_fire_department_outlined,size: 60,)
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
                      color: Colors.deepPurple.withOpacity(0.6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:  CustomText(text:"He is able who thinks he is able.",fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                          ),
                          SizedBox(height: 15.h,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("~Buddha",style:TextStyle(fontStyle: FontStyle.italic,color: Colors.white),),
                          )
                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),

          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: CustomText(text: "Would you like to go into\nmore details?",
                      fontSize: 22.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                    ),
                    SizedBox(height: 25.h,),
                    CustomText(text: "I feel...",fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey,),
                    SizedBox(height: 10.h,),

                    Container(
                      height: 400,
                      width: 350,
                      child: GridView.count(
                        crossAxisCount: 3, // Number of columns
                        children: List.generate(18, (index) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.deepPurple.withOpacity(0.2),

                              ),
                              height: 70,
                              width: 100,
                              margin: EdgeInsets.all(2.0),
                              child: Center(
                                child: Text(
                                  '$index',
                                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
          Container(
            color: Colors.deepPurple.withOpacity(0.2),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: CustomText(text: "What's happening today?",
                        fontSize: 22.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                    ),
                    SizedBox(height: 25.h,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(text: "Sports",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                              CustomText(text: "Love",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                              CustomText(text: "Friends   ",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                            ],
                          ),
                          SizedBox(height: 20.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(text: "Work",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                              CustomText(text: "     Studying",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                              CustomText(text: "Self-care",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(text: "Chores",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                              CustomText(text: "Nature",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                              CustomText(text: "Relexing",fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h,),
                    CustomText(text: "What habits have you accomplished?",
                      fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                    SizedBox(height: 30.h,),

                    Row(
                      children: [
                        Icon(Icons.sports_gymnastics_outlined,color: Colors.white,size: 40,) ,
                        SizedBox(width: 25.w,),
                        CustomText(text: "dumbble press" ,fontSize: 16,color: Colors.white,),
                       SizedBox(width: 70.w,),
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white
                            )
                          ),

                          hoverColor: Colors.black,
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                      ],
                    )


                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: CustomText(
                      text: "Add a note about whatever you\n"
                          "think and feel",
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Your note",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                  SizedBox(height: 400.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap:(){
                          },
                            child: Icon(Icons.arrow_back_rounded,color: Colors.white,)),
                        InkWell(
                            onTap: (){
                              Navigator.pop(context);

                            },
                            child: Icon(Icons.arrow_circle_right,color: Colors.deepPurple.withOpacity(0.6),size: 50,)),
                      ],
                    ),
                  )




                ],
              ),
            ),

          ),

        ],
      ),


    );
  }
}
