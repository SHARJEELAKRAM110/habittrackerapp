import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Widgets/CustomWidgets/CustomText.dart';
bool isEveryDay=true;
class IndexFour extends StatefulWidget {
  const IndexFour({super.key});

  @override
  State<IndexFour> createState() => _IndexFourState();
}

class _IndexFourState extends State<IndexFour> {
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 400.h,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),


        ),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Center(
                child: CustomText(
                  text: "Select when you want\n"
                      "to complete your habit",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.blueAccent,
                )),
            SizedBox(height: 30.h,),
            CustomText(text: "Your habit will become ingrained\nfaster if you do it every day at a\nsimilar time.",
            fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey,),
            SizedBox(height: 15.h,),
            isEveryDay?Column(
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 120.w,
                    child: MaterialButton(onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.green.shade400,
                    child: Text("Every day",style: TextStyle(fontSize: 12),),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(text: "or",fontSize: 12,color: Colors.grey,),
                  ),
                  SizedBox(
                    height: 30.h,
                    width: 120.w,
                    child: MaterialButton(onPressed: (){
                      setState(() {
                      isEveryDay=true;
                      });
                    },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.purple.withOpacity(0.6),
                    child: Text("Custom day",style: TextStyle(fontSize: 12,color: Colors.black),),),
                  ),
                ],
              ):
customDay()
          ],
        ),
      ),
    );
  }
 Widget customDay() {
    return   GridView.count(
      crossAxisCount: 3, // Number of columns in the grid
      children: List.generate(
        9, // Number of items in the grid
            (index) => GridTile(
          child: Container(
            color: Colors.blue[(index + 1) * 100], // Just for demonstration
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
