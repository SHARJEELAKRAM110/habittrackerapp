import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Widgets/CustomWidgets/CustomText.dart';

class EditIconScreen extends StatefulWidget {
  const EditIconScreen({super.key});

  @override
  State<EditIconScreen> createState() => _EditIconScreenState();
}

class _EditIconScreenState extends State<EditIconScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final int maxLength = 40; // Maximum allowed length for the text field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0,left: 20,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.close,size: 30,color: Colors.black,)),
              ],
            ),
            CustomText(
                text: "NAME", fontSize: 14, fontWeight: FontWeight.w500),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: TextField(
                maxLength: maxLength, // Set the maximum length here.

                controller: _textEditingController,
                onChanged: (text) {
                  if (text.length > maxLength) {
                    // Truncate the text to the maxLength
                    _textEditingController.text =
                        text.substring(0, maxLength);
                    // Move the cursor to the end of the text
                    _textEditingController.selection = TextSelection.fromPosition(
                      TextPosition(offset: _textEditingController.text.length),
                    );
                  }
                },
                cursorColor: Colors.black,
                style:  TextStyle(fontSize: 16,fontWeight: FontWeight.w400),

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 5,left: 10),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                  fillColor: Colors.grey.withOpacity(0.4),
                  filled: true,
                  hintText: "hdkfnf",
                  hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)

                ),
              ),
            ),

            SizedBox(height: 150.h,),
            Center(
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff8C96FF).withOpacity(0.3),

                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
