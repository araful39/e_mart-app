
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpController extends GetxController {
  static SingUpController get instance => Get.find();

//// variables
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




}
