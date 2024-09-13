import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/verify_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/screens/otp/otp.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationController verificationController =
        Get.put(VerificationController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  width: Get.width * 0.6,
                  image: const AssetImage(AppImages.deliveryEmail)),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              Text(
                AppTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(
                AppTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              CustomElevatedButton(
                  backgroundColor: AppColores.primary,
                  name: AppTexts.done,
                  onPressed: () async {
                    EasyLoading.show();
                    await Future.delayed(const Duration(seconds: 2));
                    Get.off(() => OTPScreen(
                          verifyOtp: verificationController.newPassword,
                        ));
                    EasyLoading.dismiss();
                  }),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(AppTexts.resentEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
