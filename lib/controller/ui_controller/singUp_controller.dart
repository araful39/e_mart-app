import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/screens/signup/verify_email.dart';

class SingUpController extends GetxController {
  static SingUpController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  late final progress = false.obs;
  final TextEditingController firstName =
      TextEditingController(text: 'Md.Araful');
  final TextEditingController lastName = TextEditingController(text: "islam");
  final TextEditingController userName = TextEditingController(text: "Raju");
  final TextEditingController email =
      TextEditingController(text: "rajuslam39@gmail.com");
  final TextEditingController phoneNumber =
      TextEditingController(text: "01911111111");
  final TextEditingController password =
      TextEditingController(text: "12345678");
  final GlobalKey<FormState> singupFormKey = GlobalKey<FormState>();

  signUp() async {
    if (singupFormKey.currentState!.validate()) {
      EasyLoading.show();
      await Future.delayed(const Duration(seconds: 2));
      Get.offAll(() => const VerifyEmailScreen());
      EasyLoading.dismiss();
      EasyLoading.showSuccess('SignUp success!');
    }
  }
}
