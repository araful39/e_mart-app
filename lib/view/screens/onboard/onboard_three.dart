import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/screens/signin/signin.dart';

class OnboardThree extends StatelessWidget {
  const OnboardThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KSizes.md),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/onboard/three.png"),
                const SizedBox(
                  height: KSizes.defaultBtwSections,
                ),
                const Text(
                  "Contactless Delivery",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: KSizes.fontSizeXl),
                ),
                const SizedBox(
                  height: KSizes.sm,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  style: TextStyle(
                    fontSize: KSizes.fontSizeLg,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                CustomElevatedButton(
                  name: "Next",
                  onPressed: () {
                    Get.offAll(() => const SignInScreen());
                  },
                ),
                const SizedBox(
                  height: KSizes.lg,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
