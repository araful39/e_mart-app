import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/login_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/screens/password_configuration/forget_password.dart';
import 'package:morder_ecommerce_app/view/screens/signup/singup.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({
    super.key,
  });

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        key: controller.formkey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: KSizes.defaultBtwSections),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  return "Enter valid email";
                },
                controller: controller.email,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: AppTexts.email,
                    labelStyle: TextStyle(color: AppColores.black)),
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              Obx(
                () => TextFormField(
                  validator: (value) {
                    return "Enter valid password";
                  },
                  controller: controller.password,
                  obscuringCharacter: "*",
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    helperStyle: const TextStyle(color: AppColores.black),
                    prefixIcon: const Icon(Icons.key),
                    labelText: AppTexts.password,
                    labelStyle: const TextStyle(
                        color: AppColores.black),
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.hidePassword.value =
                            !controller.hidePassword.value;
                      },
                      icon: controller.hidePassword.value
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          value: controller.privacyPolicy.value,
                          onChanged: (value) {
                            controller.privacyPolicy.value = value!;
                          })),
                      const Text(AppTexts.remember)
                    ],
                  ),
                  TextButton(
                      onPressed: () => Get.to(const ForgetPassword()),
                      child: const Text(AppTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              Obx(
                () => SizedBox(
                    width: double.infinity,
                    child: controller.privacyPolicy.value
                        ? ElevatedButton(
                            onPressed: () {

                            },
                            child: const Text(AppTexts.signIn))
                        : ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.grey)),
                            onPressed: () {},
                            child: const Text(AppTexts.signIn))),
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => const SingUpScreen());
                      },
                      child: const Text(AppTexts.createAccount))),
            ],
          ),
        ));
  }
}
