import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomText extends StatelessWidget {
  String text;
  String? fontFamily = "Rubik";
  FontWeight? fontWeight = FontWeight.w400;
  TextAlign? textAlign = TextAlign.start;
  int? color = 0xff000000;
  double? fontSize = 18;

  CustomText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.fontFamily,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: Color(color??0xff000000),
        fontSize: fontSize?.sp,
        fontWeight: fontWeight,
        fontFamily: "Rubik",
      ),
    );
  }
}
