import 'package:country_list_pick/country_list_pick.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Widgets/CustomWidgets/CustomText.dart';
import '../controller/auth_controller.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  bool show=true;
  bool adShow=true;
  bool abShow=true;
  bool ssShow=true;
  bool isPasswordEightCharacters=false;
  onPasswordChanged(String password){
    setState(() {
      isPasswordEightCharacters=false;
      if(password.length>=8)
        isPasswordEightCharacters=true;
    });
  }
  final formkey=GlobalKey<FormState>();
  FirebaseAuth _auth=FirebaseAuth.instance;


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
          top: 50.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                              CustomText(text: "CONTINUE WITH FACEBOOK",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
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
                            cont.signInWithGoogle();
                          },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),

                              Image.asset(
                                "assets/images/google.png", height: 20.h,
                                width: 20,),
                              SizedBox(
                                width: 20.w,
                              ),
                              CustomText(
                                text: "CONTINUE WITH GOOGLE",
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
                          text: "OR LOG IN WITH EMAIL",
                          color: Color(0xffA1A4B2),
                        )),
                    SizedBox(height: 30.h,),
                    Form(
                        key: formkey,
                        child: Column(
                          children: [
                            TextFormField(

                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter email';
                                  }
                                  return null;
                                },
                                controller: cont.emailController,
                                obscureText: false,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  setState(() {
                                    show = GetUtils.isEmail(value);
                                  });
                                },
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.alternate_email,),

                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.black)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),

                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff8C96FF),
                                      ),
                                      borderRadius: BorderRadius.circular(10),

                                    ),
                                    hintText: 'abc@gmail.com',
                                    suffixIcon: Visibility(
                                      visible: show,
                                      child: Icon(Icons.done,),
                                    )
                                )),
                            SizedBox(height: 20,),
                            TextFormField(
                                onChanged: (password) =>
                                    onPasswordChanged(password),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter password';
                                  }
                                  return null;
                                },
                                controller: cont.passwordController,
                                obscureText: abShow,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock_open),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.black)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff8C96FF),
                                    ),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  constraints: BoxConstraints(
                                  ),
                                  hintText: 'Password',
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          abShow = !abShow;
                                        });
                                      },
                                      child: Icon(
                                          abShow ? Icons.visibility : Icons
                                              .visibility_off)),
                                )),

                          ],
                        )),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(Icons.check, size: 15,
                                color: isPasswordEightCharacters
                                    ? Colors.black
                                    : Colors.transparent),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('enter at least 8 characters'),
                      ],
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      height: 45.h,
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            cont.login();
                          }
                        },
                        minWidth: double.infinity,
                        color: Color(0xff8C96FF),
                        child: Text('Login', style:
                        TextStyle(color: Colors.white, fontSize: 18,),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: () {},
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
      );
    }),
      ),
    );
  }
}
