import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/screens/password_configuration/reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController =
        TextEditingController(text: 'rajuslam39@gmail.com');
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(
                AppTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections * 2,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: AppTexts.email,
                  prefixIcon: Icon(Icons.email),
                  labelStyle: TextStyle(color: AppColores.black),
                ),
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              CustomElevatedButton(
                backgroundColor: AppColores.primary,
                name: "Submit",
                onPressed: () async {
                  EasyLoading.show();
                  await Future.delayed(const Duration(seconds: 2));
                  Get.off(const ResetPassword());
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
