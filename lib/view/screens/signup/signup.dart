import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/singUp_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/utills/validat/validat.dart';
import 'package:morder_ecommerce_app/view/common/widgets/button/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/form_divider.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/social_buttons.dart';
import 'package:morder_ecommerce_app/view/screens/signup/signup_widget/terms_condition_checkbox.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SingUpController singUpController = Get.put(SingUpController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(KSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: KSizes.defaultBtwSections,
                ),
                Form(
                  key: singUpController.singupFormKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              validator: (value) =>
                                  AppValidator.validateEmptyText(
                                      "First Name", value),
                              controller: singUpController.firstName,
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
                                  AppValidator.validateEmptyText(
                                      "Last Name", value),
                              controller: singUpController.lastName,
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
                        controller: singUpController.userName,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: AppTexts.userName,
                          hintStyle: TextStyle(color: AppColores.black),
                        ),
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        validator: (value) => AppValidator.validateEmail(value),
                        controller: singUpController.email,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: AppTexts.email,
                          hintStyle: TextStyle(color: AppColores.black),
                        ),
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        validator: (value) => AppValidator.validateEmptyText(
                            "Phone Number", value),
                        controller: singUpController.phoneNumber,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: AppTexts.phoneNo,
                          hintStyle: TextStyle(color: AppColores.black),
                        ),
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwInputFields,
                      ),
                      Obx(() => TextFormField(
                            validator: (value) =>
                                AppValidator.validatePassword(value),
                            controller: singUpController.password,
                            obscureText: singUpController.hidePassword.value,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.key),
                              hintText: AppTexts.password,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  singUpController.hidePassword.value =
                                      !singUpController.hidePassword.value;
                                },
                                icon: Icon(singUpController.hidePassword.value
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              hintStyle:
                                  const TextStyle(color: AppColores.black),
                            ),
                          )),
                      const SizedBox(height: KSizes.defaultBtwSections),
                      const TermsAndConditionCheckBox(),
                      const SizedBox(
                        height: KSizes.defaultBtwSections,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: CustomElevatedButton(
                          name: 'Create Account',
                          onPressed: () {
                            singUpController.signUp();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: KSizes.defaultBtwSections,
                ),
                CustomFormDivider(
                    dividerText: AppTexts.onSignUpWith.capitalize!),
                const SizedBox(
                  height: KSizes.defaultBtwSections,
                ),
                const CustomSocialButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
