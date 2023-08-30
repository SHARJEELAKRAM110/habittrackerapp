import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({super.key});

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.close,color: Colors.grey,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
            onTap: () {
          // Add your button click action here
          print('Button clicked!');
  },
    onTapDown: (_) {
    setState(() {
    _isHovering = true;
    });
    },
    onTapUp: (_) {
    setState(() {
    _isHovering = false;
    });
    },
    child: Center(
        child: SizedBox(
          height: 50.h,
          width: 50.w,
          child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          color: _isHovering ? Colors.blueAccent :Colors.yellow.withOpacity(0.4)
          ),
          ),
        ),
    ),
    ),
            SizedBox(height: 15.h,),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.yellow.withOpacity(0.4),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Realize '),
                  TextSpan(
                    text: 'your potential',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(width: 15.h,),
                CustomText(text: "Unlimited habits & journaling.",color: Colors.white,),

              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(width: 15.h,),
                CustomText(text: "Beat procrastination",color: Colors.white,),

              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(width: 15.h,),
                CustomText(text: "Unlock all audio lessons",color: Colors.white,),

              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(width: 15.h,),
                CustomText(text: "Mood & Habit statistics",color: Colors.white,),

              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(width: 15.h,),
                CustomText(text: "Daily Motivation",color: Colors.white,),

              ],
            ),
            SizedBox(height: 15.h,),
            SizedBox(
              width: double.infinity,
              child: Card(
                shape:Border.all(color: Colors.grey,width: 2),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "LifeTime",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black,),
                          CustomText(text: "Rs 1,600.00",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black,),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: "Access to all future updates included"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "Monthly",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black,),
                          CustomText(text: "Rs 600.00",fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: MaterialButton(onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.green,
              child: CustomText(text: "CONTINUE",fontSize: 16,fontWeight: FontWeight.w600,),),
            )

          ],
        ),
      ),
    );
  }
}
