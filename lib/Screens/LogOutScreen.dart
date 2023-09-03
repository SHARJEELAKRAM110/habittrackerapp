import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';
import 'package:habit_tracker/controller/auth_controller.dart';
import 'package:firebase_database/firebase_database.dart';

class LogOutScreen extends StatefulWidget {
  const LogOutScreen({super.key});

  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  final auth=FirebaseAuth.instance;
  final ref=FirebaseDatabase.instance.ref("user");
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AuthController(),
        builder: (cont){
      return     Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 30,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
              SizedBox(height: 15.h,),
              CustomText(text: "Settings",fontSize: 22,fontWeight: FontWeight.w600,),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Icon(Icons.account_box,color: Colors.black,),
                  SizedBox(width: 15.w,),

                  CustomText(text: "Account",fontSize: 18,fontWeight: FontWeight.w500,),
                ],
              ),
              SizedBox(height: 75.h,),
              CustomText(text: "Your name"),
              // StreamBuilder(
              //     stream: ref.onValue,
              //     builder: (context,AsyncSnapshot<DatabaseEvent> snapshot){
              //   return ListView.builder(itemBuilder: (context,index){
              //     return ListTile();
              //   });
              // }),
              CustomText(text: "${cont.userData?.name}"),
              CustomText(text: "YOUR EMAIL"),
              CustomText(text: "${cont.userData?.email}"),
              SizedBox(height: 80.h,),
              InkWell(
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: CustomText(text: "Light mode",),
                            leading: Icon(Icons.light_mode),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            title: CustomText(text: "Dark mode",),
                            leading: Icon(Icons.dark_mode),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());

                            },
                          ),

                        ],
                      ),
                    )
                  );
                },
                child: SizedBox(
                  height: 70.h,
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.brightness_1),
                          SizedBox(width: 15.w,),
                          CustomText(text: "Change theme",fontWeight: FontWeight.w600,fontSize: 16,)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  cont.logout();
                },
                child: SizedBox(
                  height: 70.h,
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.logout_outlined),
                          SizedBox(width: 15.w,),
                          CustomText(text: "Log out",fontWeight: FontWeight.w600,fontSize: 16,)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 70.h,
                width: double.infinity,
                child: Card(
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        const Icon(Icons.delete_outlined,color: Colors.white,),
                         SizedBox(width: 15.w,),
                        CustomText(text: "Delete Account",color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16,)
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      );

    });
  }
}
