import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

popDialog(){
  Get.defaultDialog(
    backgroundColor: Colors.transparent,
    title: "",
    content: WillPopScope(
        onWillPop: () => Future.value(false),
        child: SpinKitFadingFour(
          color: Color(0xff8C96FF),
    ),
    ));

}
errorAlert(String error) {
  Get.defaultDialog(
    title: '',
    titlePadding: EdgeInsets.zero,
    content: Column(
      children: [
        const Icon(
          Icons.warning_amber,
          size: 40,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 200,
          child: Text(
            error,
            textAlign: TextAlign.center,
            // style: AppTextStyle.mediumBlack14,
          ),
        ),
      ],
    ),
  );
}
errorAlertF(String error) {
  Fluttertoast.showToast(
      msg: error,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}