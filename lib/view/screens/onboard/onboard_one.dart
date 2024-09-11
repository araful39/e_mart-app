import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/screens/onboard/onboard_two.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: KSizes.md),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/onboard/one.png"),
                  const SizedBox(
                    height: KSizes.defaultBtwSections,
                  ),
                  const Text(
                    "Shop Online Products",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: KSizes.fontSizeXl),
                  ),
                  const SizedBox(
                    height: KSizes.sm,
                  ),
                   const Text(
                    textAlign:TextAlign.center ,
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",style: TextStyle(fontSize: KSizes.fontSizeLg,),)
                ],
              ),
              SizedBox(
                width: Get.width,
                child: OutlinedButton(
                    onPressed: () {
                      Get.off(() => const OnboardTwo());
                    },
                    child: const Text("Next")),
              ),
              const SizedBox(height: KSizes.lg,)
            ],
          ),
        ),
      ),
    );
  }
}
