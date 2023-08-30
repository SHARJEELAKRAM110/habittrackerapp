import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:habit_tracker/Models/UserData.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Screens/Home_Screen/HomeScreen.dart';
import '../Screens/LoginScreen.dart';
import '../Utils/Funcations.dart';
import '../_utiles/Utiles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class AuthController extends GetxController{
  TextEditingController passwordController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  late SharedPreferences prefs;

  UserData? userData;
  String token='';
  String userId='';
  Future<void> onInit() async {
    super.onInit();
    print("<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>");
    prefs = await SharedPreferences.getInstance();
  }



  Future<UserCredential>
  signInWithGoogle() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;
    print(googleAuth);
    // Create a new credential
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final UserCredential authResult =
    await _auth.signInWithCredential(credential);
    final User? user = authResult.user;
    print(user?.email);
    print(user?.displayName);
    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final User? currentUser = _auth.currentUser;
      print(currentUser?.email);
      print(currentUser?.displayName);
      print(currentUser?.displayName);
      print(currentUser?.uid);
      onLoginSuccess({
        'name':currentUser?.displayName,
        'email':currentUser?.email,
        'user_id':currentUser?.uid,
      });
      assert(user.uid == currentUser?.uid);
    } else {
      Fluttertoast.showToast(
        msg: "Operation has been cancelled !",
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
    }

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  Future login() async{
    popDialog();
    print(emailController.text.toString());
    print(passwordController.text.toString());
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.toString(),
      password: passwordController.text.toString(),).
    then((value) async {
      userId=value.user?.uid??"";
      print("??????????????????$userId");
      DocumentSnapshot<Map<String, dynamic>> snapshot =await fetchUserData(userId);
      Map<String, dynamic> snapshotData= snapshot.data()?? {
        "email":emailController.text.toString(),
        "password":passwordController.text.toString(),
      };

      print(">>>>>>>>>>>>>>>>>>>>>>>>$snapshotData");
      onLoginSuccess(
          snapshotData
         );
      emailController.clear();
      passwordController.clear();


    })
        .onError((error, stackTrace){
      debugPrint(error.toString());
      Utiles().toastMassage('Something went wrong,try again');
    });

  }
  Future<void>  signUpEmail()async{
    popDialog();
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.toString(),
      password: passwordController.text.toString(),).
    then((value){
userId=value.user?.uid??"";
      onLoginSuccess({
        "email":emailController.text.toString(),
        "password":passwordController.text.toString(),
        'name': nameController.text.trim(),
        'address': addressController.text.trim(),
        'user_id':userId
      });
      saveUser();
    }).onError((error, stackTrace){
      Utiles().toastMassage('Something went wrong,try again');
    }
    );
  }
  Future<void> logout() async {
    popDialog();
    Timer(Duration(seconds: 2), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove("token");
      await prefs.remove("userData");
      await prefs.clear();
      Get.offAll(() => LoginScreen());
    });

    }

  Future checkUserLoggedIn() async {
    print("LLLLLLLLLLL");
    bool isLogin = (prefs.get("userData") == null ? false : true);
    print("KKKKKKKKKKKKKKK");
    if (isLogin) {
      await getUserDetail();
      Get.to(HomeScreen());
      // Get.toNamed("/HomeScreen");
    } else {
      Get.to(LoginScreen());
    }
  }
  void onLoginSuccess(Map<String, dynamic> value) async {
    await prefs.setString("userData", jsonEncode(value));
    await getUserDetail();
    Get.offAll(const HomeScreen());
    update();
  }

  Future getUserDetail() async {
    token = prefs.getString("token")??"";
    print(token);
    print("token");
    print(jsonDecode(prefs.getString("userData")!));
    try {
      print("goood");
      userData = UserData.fromJson(
          jsonDecode(prefs.getString("userData")!));
    } catch (e) {
      Get.offAll(LoginScreen());
      print(e);
    }
    update();
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> fetchUserData(String documentId) {
    return FirebaseFirestore.instance.collection('users').doc(documentId).get();
  }




  Future saveUser() async{
    print("LLLLLLLLLLL");
    final CollectionReference usersCollection =
    FirebaseFirestore.instance.collection('users');

    // Sample data to upload
    final Map<String, dynamic> userData = {
      'name': nameController.text.trim(),
      'address': addressController.text.trim(),
      'email': emailController.text.trim(),
      'user_id':userId
    };
      try {
        // Add a new document with a generated ID
        // You can also specify a custom document ID like this: usersCollection.doc('custom_id').set(userData);
        await usersCollection.doc(userId).set(userData);
        print('Data uploaded successfully!');
      } catch (e) {
        print('Error uploading data: $e');
      }

}


}
