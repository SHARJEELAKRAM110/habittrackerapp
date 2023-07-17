import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Hey,",style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.6),),),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,left: 180),
                  child: Container(
                    height: 45,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8C96FF),
                    ),
                    child: Center(
                      child: Icon(Icons.card_giftcard_outlined),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Color(0xff8C96FF),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 DAYS OF ACCOUNTABILITY",style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Rubik",fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                      textAlign: TextAlign.start,),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.check_circle,color: Colors.white,),
                              Text("Sat",style: TextStyle(color: Colors.white.withOpacity(0.6)),),

                            ],
                          ),
                          SizedBox(width: 5.w,),
                          Column(
                            children: [
                              Icon(Icons.check_circle,color: Colors.white,),
                              Text("Sun",style: TextStyle(color: Colors.white.withOpacity(0.6)),),
                            ],
                          ),
                          SizedBox(width: 80.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("GREAT JOB!",style: TextStyle(color: Colors.white.withOpacity(0.6)),),
                              Text("TAP FOR MORE INFO",style: TextStyle(color: Colors.white.withOpacity(0.6)),),


                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("TODAY",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
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
                      child: Center(child: Icon(Icons.check_circle_outlined,size: 120,)),
                    ),
              Text("Amazing! All done for today",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Rubik",fontWeight: FontWeight.w600,
                  color: Colors.black
              ),


              )],
                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("ON THE NEXT DAYS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
            ),
SizedBox(
  width: MediaQuery.of(context).size.width,

  child:   Card(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [

          Text("10:32",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
          Row(
            children: [
              Image.asset("assets/images/dumble.jpg",height: 30,width: 30,)
            ],
          )
        ],

      ),
    ),

  ),
)

          ],
        ),
      ),
    );
  }
}
