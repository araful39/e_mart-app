import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/navigation_menu.dart';

class SingUpController extends GetxController {
  static SingUpController get instance => Get.find();


  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  late final progress = false.obs;
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> singupFormKey = GlobalKey<FormState>();

  signUp() async {
    if (singupFormKey.currentState!.validate()) {
      EasyLoading.show();
      await Future.delayed(const Duration(seconds: 3));
      Get.offAll(() => const BottomNavigationBarScreen());
      EasyLoading.showSuccess('SignUp success!');
    }
  }
}
