import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreen.dart';

import '../Widgets/CustomWidgets/CustomText.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;

  // final phoneNumberController = TextEditingController();
  // final auth = FirebaseAuth.instance;

  // @override
  // void dispose() {
  //   super.dispose();
  //   phoneNumberController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(
          top: 50.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0),
              //   child: Image.asset("assets/images/backButton.png"),
              // ),
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
                        text: "Welcome Back!",
                        fontSize: 22.sp,
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

                              Image.asset("assets/images/google.png",height: 20.h,width: 20,),
                              SizedBox(
                                width: 20.w,
                              ),
                              CustomText(
                                text:"CONTINUE WITH GOOGLE",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    Center(
                      child: CustomText(
                        text:"OR LOG IN WITH EMAIL",
                      color: Color(0xffA1A4B2),
                    )),
                    SizedBox(height: 30.h,),
                    SizedBox(
                      height: 45.h,
                      width: 335.w,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5,left: 20),
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5,left: 20),
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
                      height: 45,
                      width: 335,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff8C96FF),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
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
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                          "DON’T HAVE AN ACCOUNT?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xff959EA7)),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(SignUpScreen());
                            },
                            child: Text(
                              "SIGN UP",
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
