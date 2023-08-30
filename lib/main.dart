import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:habit_tracker/Screens/Home_Screen/HomeScreen.dart';
import 'package:habit_tracker/Screens/SplashScreen.dart';
import 'package:habit_tracker/controller/auth_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final authCont=Get.put(AuthController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',

   home: SplashScreen(),
    );
    });
  }
}

