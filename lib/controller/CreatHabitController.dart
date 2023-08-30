import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:habit_tracker/Models/UserData.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';
import 'package:habit_tracker/controller/auth_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Screens/Home_Screen/HomeScreen.dart';
import '../Screens/LoginScreen.dart';
import '../Utils/Funcations.dart';
import '../_utiles/Utiles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class CreatHabitController extends GetxController{
  final authCont=Get.put(AuthController());
  TextEditingController textEditingController = TextEditingController();
  TextEditingController habitName=TextEditingController();
  TextEditingController stepOneStack=TextEditingController();
  TextEditingController reasonToMotivate=TextEditingController();
  double value=1.0;
  String health="Health";
  String timeSet="time";


  Future saveHabit() async{
    print("LLLLLLLLLLL");
    final CollectionReference usersCollection =
    FirebaseFirestore.instance.collection('usersHabits');

    // Sample data to upload
    final Map<String, dynamic> userData = {
      'habitName': habitName.text.trim(),
      'stepOneStack': stepOneStack.text.trim(),
      'reasonToMotivate': reasonToMotivate.text.trim(),
      'health':'health',
      'timeSet':'$timeSet',
      'value':value,
    };
    try {
      print(authCont.userData?.userId);
      // Add a new document with a generated ID
      // You can also specify a custom document ID like this: usersCollection.doc('custom_id').set(userData);
      await usersCollection.doc(authCont.userData?.userId).set(userData);
      Get.close(2);
      print('Data uploaded successfully!');
    } catch (e) {
      print('Error uploading data: $e');
    }

  }
  void showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }


}
