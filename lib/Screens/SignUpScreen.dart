import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Screens/LoginScreen.dart';
import 'package:habit_tracker/Utils/Funcations.dart';
import 'package:habit_tracker/controller/auth_controller.dart';

import '../Widgets/CustomWidgets/CustomText.dart';
import '../_utiles/Utiles.dart';
import 'Home_Screen/HomeScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool abShow = true;
  bool isPasswordEightCharacters = false;

  onPasswordChanged(String password) {
    setState(() {
      isPasswordEightCharacters = false;
      if (password.length >= 8) isPasswordEightCharacters = true;
    });
  }

  final formkey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;



  @override
  Widget build(BuildContext context) {
      return WillPopScope(
        onWillPop: ()async{
          SystemNavigator.pop();
          return true;
        },
        child: Scaffold(
         body: GetBuilder(
            init: AuthController(),
            builder: (cont) {
          return Padding(
            padding: EdgeInsets.only(
              top: 30.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0.w),
                      child: Image.asset(
                        "assets/images/backButton.png",
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
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
                        SizedBox(
                          height: 30.h,
                        ),
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
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 45.h,
                          width: 335.w,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                side: BorderSide(color: Colors.black)),
                            onPressed: () {
                              cont.signInWithGoogle();
                            },
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Image.asset(
                                    "assets/images/google.png",
                                    height: 20,
                                    width: 20,
                                  ),
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
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                          child: Text(
                            "OR LOG IN WITH EMAIL",
                            style: TextStyle(
                                color: Color(0xffA1A4B2), fontFamily: "Rubik"),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          height: 45.h,
                          width: 335.w,
                          child: TextField(
                            controller: cont.nameController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 5.h, left: 20.w),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0.r),
                                  borderSide: BorderSide(color: Color(0xff677294))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0.r),
                                  borderSide: BorderSide(
                                      color: Color(0xff677294).withOpacity(.16))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              hintText: 'Name',
                              hintStyle: TextStyle(color: Color(0xffC0C0C0)),
                              prefixIcon: Icon(Icons.person_2_outlined,color: Colors.grey,),

                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),

                        SizedBox(
                          height: 45.h,
                          width: 335.w,
                          child: TextField(
                            controller: cont.addressController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 5.h, left: 20.w),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0.r),
                                  borderSide: BorderSide(color: Color(0xff677294))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0.r),
                                  borderSide: BorderSide(
                                      color: Color(0xff677294).withOpacity(.16))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              prefixIcon: Icon(Icons.location_on,color: Colors.grey,),
                              hintText: 'Address',
                              hintStyle: TextStyle(color: Color(0xffC0C0C0)),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
                        Form(
                            key: formkey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height:45.h,
                                  width: double.infinity,
                                  child: TextFormField(
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Enter email';
                                      }
                                      return null;
                                    },
                                    controller: cont.emailController,
                                    obscureText: false,
                                    keyboardType: TextInputType.emailAddress,
                                    onChanged: (value){
                                      setState(() {
                                        abShow=GetUtils.isEmail(value);
                                      });
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'abc@gmail.com',
                                        suffixIcon: Visibility(
                                          visible: abShow,
                                          child: Icon(Icons.done,color: Colors.grey,),
                                        ),
                                        contentPadding: EdgeInsets.only(top: 5.h, left: 20.w),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20.0.r),
                                            borderSide: BorderSide(color: Color(0xff677294))),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20.0.r),
                                            borderSide: BorderSide(
                                                color: Color(0xff677294).withOpacity(.16))),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0.r),
                                          borderSide: BorderSide(color: Colors.black),
                                        ),
                                        hintStyle: TextStyle(color: Color(0xffC0C0C0)),
                                        prefixIcon: Icon(Icons.alternate_email,color: Colors.grey,)
                                    ),

                                  ),
                                ),
                                SizedBox(height: 20,),
                                TextFormField(
                                  onChanged: (password)=>onPasswordChanged(password),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter password';
                                    }
                                    return null;
                                  },
                                  controller: cont.passwordController,
                                  obscureText: abShow,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      suffixIcon: InkWell(
                                          onTap: () {
                                            setState(() {
                                              abShow = !abShow;
                                            });
                                          },
                                          child: Icon(
                                              abShow ? Icons.visibility : Icons.visibility_off)),                                  contentPadding: EdgeInsets.only(top: 5.h, left: 20.w),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0.r),
                                          borderSide: BorderSide(color: Color(0xff677294))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0.r),
                                          borderSide: BorderSide(
                                              color: Color(0xff677294).withOpacity(.16))),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.0.r),
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      hintStyle: TextStyle(color: Color(0xffC0C0C0)),
                                      prefixIcon: Icon(Icons.lock_open,color: Colors.grey,)

                                  ),


                                ),

                              ],
                            )),

                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 45.h,
                          width: 335.w,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color(0xff8C96FF),
                            onPressed: () {
                              if(formkey.currentState!.validate()){
                                if(isPasswordEightCharacters==true){
                                  cont.signUpEmail();
                                }
                              }
                            },
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0.h),
                          child: Align(
                            alignment: Alignment.center,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
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
          );

    },)),
      );
  }
}
