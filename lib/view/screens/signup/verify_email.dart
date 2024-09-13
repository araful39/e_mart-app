import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/verify_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/screens/otp/otp.dart';
import 'package:morder_ecommerce_app/view/screens/signin/signin.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
   VerificationController verificationController= Get.put(VerificationController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () => Get.offAll(() => const SignInScreen()),
                icon: const Icon(CupertinoIcons.clear,color: AppColores.primary,)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  width: Get.width * 0.6,
                  image: const AssetImage(AppImages.verifyImage)),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              Text(
                AppTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(
                "support@raju.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(
                AppTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              CustomElevatedButton(
                name: AppTexts.rContinue,
                onPressed: () {
                  Get.to(()=>OTPScreen(verifyOtp: verificationController.verifyOTP,));
                },
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              CustomElevatedButton(
                name: AppTexts.resentEmail,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
