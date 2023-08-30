import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:habit_tracker/Screens/HomeScreenFive/HomeScreenFive.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenFour.dart';
import 'package:habit_tracker/Screens/HomeScreenOne/HomeScreenOne.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreenThree/HomeScreenThree.dart';
import 'package:habit_tracker/Screens/HomeScreenTwo/HomeScreenTwo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> bottomScreens = [
    HomeScreenOne(),
    HomeScreenTwwo(),
    HomeScreenFour(),
    HomeScreenFive(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: bottomScreens[index]),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: GNav(
          tabBorderRadius: 50.0,
          style: GnavStyle.google,
          activeColor: Colors.black,
          hoverColor:Color(0xff8C96FF).withOpacity(0.2),
          tabBackgroundColor:Color(0xff8C96FF).withOpacity(0.2),

          backgroundColor: Colors.white,
          tabs: [
            GButton(
              iconSize: 25,
              icon: Icons.check_circle,
              iconColor: Colors.grey,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            GButton(
                iconSize: 25,

                icon: Icons.align_vertical_bottom,
                iconColor: Colors.grey,
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                }),
            GButton(
                iconSize: 40,

                icon: Icons.add_box,
                iconColor: Colors.black,
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (context) => HomeScreenThree());
                }),
            GButton(
                iconSize: 25,

                icon: Icons.favorite,
                iconColor: Colors.grey,
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                }),
            GButton(
                iconSize: 25,
                icon: Icons.headphones_rounded,
                iconColor: Colors.grey,
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                }),
          ],
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        ),
      ),
    );
  }
}
