import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final formkey = GlobalKey<FormState>();
}
