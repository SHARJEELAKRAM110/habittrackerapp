import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key?key,
    this.buttonColor=Colors.blue,
    this.textColor=Colors.black,
    required this.title,
    required this.onpress,
    this.height=50,
    this.width=120,
    this.loading=false,
    }):super(key:key);
final bool loading;
final String title;
final double height,width;
final VoidCallback onpress;
final Color textColor,buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: Color(0xffDDCA7F),
        borderRadius: BorderRadius.circular(10)
      ),
      child: loading?Center(child: CircularProgressIndicator()):
      Center(child: Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black),)),

    );
  }
}
