import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_tracker/Screens/HomeScreenTwo/General.dart';
import 'package:habit_tracker/Screens/HomeScreenTwo/Individual.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

class HomeScreenTwwo extends StatefulWidget {
  const HomeScreenTwwo({super.key});

  @override
  State<HomeScreenTwwo> createState() => _HomeScreenTwwoState();
}

class _HomeScreenTwwoState extends State<HomeScreenTwwo> {
  List<String>statusList=[
    "Individual",
    "General",
  ];
  int index=0;
  List<Widget>screens=[
    Individual(),
    General(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  Padding(
    padding: const EdgeInsets.only(top: 30.0),
    child:   CustomText(text: "Insights",fontSize: 26.sp,fontWeight: FontWeight.w600,),
  ),
      SizedBox(height: 10.h,),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.4)
        ),
        height: 40.h,
        width: double.infinity,
        child: ListView.builder(
            itemCount: statusList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, ind) {
              return InkWell(
                onTap: () {
                  index = ind;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SizedBox(
                    height: 30.h,
                    width: 150.w,
                    child: Container(
                      child: Center(
                          child: Text(
                            statusList[ind],
                            style: TextStyle(
                                color: Color(0xff000000),fontWeight: FontWeight.w500),
                          )),
                      decoration: BoxDecoration(
                        color: index == ind
                            ? Color(0xffFFFFFF)
                            : Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
Expanded(child:screens[index],),
    ],
  ),
),
    );
  }
}
