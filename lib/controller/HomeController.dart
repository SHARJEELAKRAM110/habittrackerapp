import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';

class HomeController extends GetxController{
  final authCont=Get.put(AuthController());
Stream? stream;
   fetchUserData() {
     print(authCont.userData?.userId);
    stream= FirebaseFirestore.instance.collection('usersHabits').doc(authCont.userData?.userId).snapshots();
  }

}