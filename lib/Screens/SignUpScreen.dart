import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Screens/LoginScreen.dart';

import '../Widgets/CustomWidgets/CustomText.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool abShow=true;
  TextEditingController emailContorller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(
          top: 30.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: Padding(
                  padding:  EdgeInsets.only(left: 20.0.w),
                  child: Image.asset("assets/images/backButton.png",
                  height:40.h,
                    width: 40.w,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: CustomText(
                        text: "Create your account",
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 30.h,),

                    SizedBox(
                      height: 45.h,
                      width: 335.w,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        color: Color(0xff8C96FF),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 18.w,
                              ),

                              Icon(
                                Icons.facebook_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 18.w,
                              ),
                              Text(
                                "CONTINUE WITH FACEBOOK",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: 45.h,
                      width: 335.w,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                            side: BorderSide(color: Colors.black)
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),

                              Image.asset("assets/images/google.png",height: 20,width: 20,),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "CONTINUE WITH GOOGLE",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    Center(
                      child: Text("OR LOG IN WITH EMAIL",
                        style: TextStyle(color: Color(0xffA1A4B2),fontFamily: "Rubik"),),
                    ),
                    SizedBox(height: 30.h,),
                    SizedBox(
                      height: 45.h,
                      width: 335.w,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5.h,left: 20.w),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                              borderSide: BorderSide(color: Color(0xff677294))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                              borderSide: BorderSide(color: Color(0xff677294).withOpacity(.16))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0.r),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Color(0xffC0C0C0)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),

                    SizedBox(
                      height: 45.h,
                      width: 335.w,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5.h,left: 20.w),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                              borderSide: BorderSide(color: Color(0xff677294))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                              borderSide: BorderSide(color: Color(0xff677294).withOpacity(.16))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0.r),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Email address',
                          hintStyle: TextStyle(color: Color(0xffC0C0C0)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    SizedBox(
                      height: 45.h,
                      width: 335.w,
                      child: TextField(
                        controller: emailContorller,
                        obscureText: abShow,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: (){
                              setState(() {
                                abShow=!abShow;
                              });
                            },
                              child: Icon(abShow?Icons.visibility:Icons.visibility_off,
                              color: abShow?Color(0xff8C96FF):Colors.grey,)),
                          contentPadding: EdgeInsets.only(top: 5.h,left: 20.w),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Color(0xff677294))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Color(0xff677294).withOpacity(.16))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color(0xffC0C0C0)),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h,),

                    SizedBox(
                      height: 45.h,
                      width: 335.w,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff8C96FF),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                        },
                        child: Center(
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30.0.h),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){},
                            child: Text("Forgot Password?",
                              style: TextStyle(color: Colors.black),)),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ALREADY HAVE AN ACCOUNT?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xff959EA7)),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(LoginScreen());
                            },
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color(0xff8C96FF),
                              ),
                            )),
                      ],
                    )


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
