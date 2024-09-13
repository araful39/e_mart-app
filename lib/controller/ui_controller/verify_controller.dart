import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/screens/bottom_navigation_bar/bottom_navigation_menu.dart';
import 'package:morder_ecommerce_app/view/screens/password_configuration/new_password.dart';


class VerificationController extends GetxController {

  RxBool hidePassword = true.obs;
  final TextEditingController otpController =
  TextEditingController(text: "123456");

  RxBool isEmailVerified = false.obs;

  void verifyOTP() async {
    String enteredOTP = otpController.text;
    if (enteredOTP.isEmpty) {
      EasyLoading.showSuccess("Enter Your Otp");
    } else if (enteredOTP.length == 6) {
      EasyLoading.show();
      await Future.delayed(const Duration(seconds: 2));
      EasyLoading.showSuccess("Success");

      Get.offAll(() => const BottomNavigationBarScreen());
    } else {
      EasyLoading.showError("Invalid OTP");
    }
  }


  void newPassword()async{
    String enteredOTP = otpController.text;
    if (enteredOTP.isEmpty) {
      EasyLoading.showSuccess("Enter Your Otp");
    } else if (enteredOTP.length == 6) {
      EasyLoading.show();
      await Future.delayed(const Duration(seconds: 2));
      EasyLoading.showSuccess("Success");

      Get.offAll(() => NewPassword());
    } else {
      EasyLoading.showError("Invalid OTP");
    }
  }


}
