import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/validat/validat.dart';
import 'package:morder_ecommerce_app/view/bottom_navigation_menu.dart';

class SignInController extends GetxController {
  RxBool hidePassword = true.obs;

  final privacyPolicy = false.obs;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final formkey = GlobalKey<FormState>();

  signIn() async {
    if (formkey.currentState!.validate()) {

      EasyLoading.show();
      await Future.delayed(const Duration(seconds: 3));
      Get.offAll(() => const BottomNavigationBarScreen());
      EasyLoading.showSuccess('LogIn success!');

    }
  }
}
