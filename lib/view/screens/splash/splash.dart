import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/rounded_image.dart';
import 'package:morder_ecommerce_app/view/screens/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkCurrentUserAndNavigate();
  }

  void checkCurrentUserAndNavigate() async {
    await Future.delayed(const Duration(seconds: 5));

    Get.offAll(const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomRoundedImage(
            imageUrl: AppImages.handshake, isNetworkImage: false),
      ),
    );
  }
}
