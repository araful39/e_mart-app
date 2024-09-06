import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/screens/password_configuration/reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
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
                decoration: const InputDecoration(
                  labelText: AppTexts.email,
                  prefixIcon: Icon(Icons.email),
                  labelStyle: TextStyle(color: AppColores.black),
                ),
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(const ResetPassword()),
                  child: const Text(AppTexts.submit),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
