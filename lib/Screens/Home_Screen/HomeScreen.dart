import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenFive.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenFour.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenOne.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenThree.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenTwo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int index=0;
  List<Widget> bottomScreens = [
    HomeScreenOne(),
    HomeScreenTwwo(),
    HomeScreenThree(),
    HomeScreenFour(),
    HomeScreenFive(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(child: bottomScreens[index]),

        ],
      ),
      bottomNavigationBar: GNav(
        activeColor: Colors.black,
        backgroundColor: Colors.white,
        tabs: [
          GButton(icon: Icons.check_circle,iconColor: Colors.grey,onPressed: (){
            index=0;
          },),
          GButton(icon: Icons.vertical_distribute_rounded,iconColor: Colors.grey,onPressed: (){
            setState(() {
              index=1;
            });
          }),
          GButton(icon: Icons.add_box,iconColor: Colors.black,

              onPressed: (){
                setState(() {
                  index=2;

                });


              }),
          GButton(icon: Icons.favorite,iconColor: Colors.grey,onPressed: (){
            setState(() {
              index=3;

            });


          }),
          GButton(icon: Icons.headphones_rounded,iconColor: Colors.grey,onPressed: (){
            setState(() {
              index=4;

            });


          }),
        ],
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
      ),
    );
  }
}
