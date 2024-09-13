import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/verify_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/utills/validat/validat.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/screens/bottom_navigation_bar/bottom_navigation_menu.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController newPassword = TextEditingController(text: '12345678');
    TextEditingController newConfirmPassword =
        TextEditingController(text: '12345678');
    VerificationController verificationController =
        Get.put(VerificationController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.newPassword,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(
                AppTexts.newPasswordTile,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections * 2,
              ),
              Obx(
                () => TextFormField(
                  validator: AppValidator.validatePassword,
                  controller: newPassword,
                  obscuringCharacter: "*",
                  obscureText: verificationController.hidePassword.value,
                  decoration: InputDecoration(
                    helperStyle: const TextStyle(color: AppColores.black),
                    prefixIcon: const Icon(Icons.key),
                    labelText: AppTexts.password,
                    labelStyle: const TextStyle(color: AppColores.black),
                    suffixIcon: IconButton(
                      onPressed: () {
                        verificationController.hidePassword.value =
                            !verificationController.hidePassword.value;
                      },
                      icon: verificationController.hidePassword.value
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: KSizes.md,
              ),
              Obx(
                () => TextFormField(
                  validator: AppValidator.validatePassword,
                  controller: newConfirmPassword,
                  obscuringCharacter: "*",
                  obscureText: verificationController.hidePassword.value,
                  decoration: InputDecoration(
                    helperStyle: const TextStyle(color: AppColores.black),
                    prefixIcon: const Icon(Icons.key),
                    labelText: AppTexts.password,
                    labelStyle: const TextStyle(color: AppColores.black),
                    suffixIcon: IconButton(
                      onPressed: () {
                        verificationController.hidePassword.value =
                            !verificationController.hidePassword.value;
                      },
                      icon: verificationController.hidePassword.value
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              CustomElevatedButton(
                backgroundColor: AppColores.primary,
                name: "Done",
                onPressed: () async {
                  EasyLoading.show();
                  await Future.delayed(Duration(seconds: 2));
                  Get.offAll(() => BottomNavigationBarScreen());
                  EasyLoading.showSuccess("Password Change");
                  EasyLoading.dismiss();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
