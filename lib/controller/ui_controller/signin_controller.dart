import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/screens/bottom_navigation_bar/bottom_navigation_menu.dart';

class SignInController extends GetxController {
  RxBool hidePassword = true.obs;

  final privacyPolicy = false.obs;
  final TextEditingController email =
      TextEditingController(text: "exmaple@gmail.com");
  final TextEditingController password =
      TextEditingController(text: '12345678');

  final formkey = GlobalKey<FormState>();

  signIn() async {
    if (formkey.currentState!.validate()) {
      EasyLoading.show();
      await Future.delayed(const Duration(seconds: 2));
      Get.offAll(() => const BottomNavigationBarScreen());
      EasyLoading.dismiss();
      EasyLoading.showSuccess('LogIn success!');
    }
  }
}
