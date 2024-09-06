import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/singUp_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/utills/validat/validat.dart';
import 'package:morder_ecommerce_app/view/screens/signup/signup_widget/terms_condition_checkbox.dart';

class CustomSingUpForm extends StatelessWidget {
  const CustomSingUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SingUpController());
    return Form(
      key: controller.singupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  validator: (value) =>
                      AppValidator.validateEmptyText("First Name", value),
                  controller: controller.firstName,
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintStyle: TextStyle(color: AppColores.black),
                      hintText: AppTexts.firstName),
                ),
              ),
              const SizedBox(
                width: KSizes.spaceBtwInputFields,
              ),
              Flexible(
                child: TextFormField(
                  validator: (value) =>
                      AppValidator.validateEmptyText("Last Name", value),
                  controller: controller.lastName,
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintStyle: TextStyle(color: AppColores.black),
                      hintText: AppTexts.lastName),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: KSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) =>
                AppValidator.validateEmptyText("User Name", value),
            controller: controller.userName,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              hintText: AppTexts.userName,
              hintStyle: TextStyle(color: AppColores.black),
            ),
          ),
          const SizedBox(
            height: KSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) => AppValidator.validateEmail(value),
            controller: controller.email,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email),
              hintText: AppTexts.email,
              hintStyle: TextStyle(color: AppColores.black),
            ),
          ),
          const SizedBox(
            height: KSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) =>
                AppValidator.validateEmptyText("Phone Number", value),
            controller: controller.phoneNumber,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.phone),
              hintText: AppTexts.phoneNo,
              hintStyle: TextStyle(color: AppColores.black),
            ),
          ),
          const SizedBox(
            height: KSizes.spaceBtwInputFields,
          ),
          Obx(() => TextFormField(
                validator: (value) => AppValidator.validatePassword(value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key),
                  hintText: AppTexts.password,
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.hidePassword.value =
                          !controller.hidePassword.value;
                    },
                    icon: Icon(controller.hidePassword.value
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                  hintStyle: TextStyle(color: AppColores.black),
                ),
              )),
          const SizedBox(height: KSizes.defaultBtwSections),
          const TermsAndConditionCheckBox(),
          const SizedBox(
            height: KSizes.defaultBtwSections,
          ),
          Obx(
            () => SizedBox(
                width: double.infinity,
                child: controller.privacyPolicy.value
                    ? ElevatedButton(
                        onPressed: () {},
                        child: const Text(AppTexts.createAccount))
                    : ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey)),
                        onPressed: () {},
                        child: const Text(AppTexts.createAccount))),
          )
        ],
      ),
    );
  }
}
