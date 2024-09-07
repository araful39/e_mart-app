import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/signin_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/utills/validat/validat.dart';
import 'package:morder_ecommerce_app/view/common/styles/spacing_styles.dart';
import 'package:morder_ecommerce_app/view/common/widgets/button/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/form_divider.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/social_buttons.dart';
import 'package:morder_ecommerce_app/view/screens/password_configuration/forget_password.dart';
import 'package:morder_ecommerce_app/view/screens/signup/signup.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const Image(height: 80, image: AssetImage(AppImages.darkAppLogo)),
              Text(
                AppTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              Text(
                AppTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Form(
                  key: signInController.formkey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: KSizes.defaultBtwSections),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: AppValidator.validateEmail,
                          controller: signInController.email,
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
                            validator: AppValidator.validatePassword,
                            controller: signInController.password,
                            obscuringCharacter: "*",
                            obscureText: signInController.hidePassword.value,
                            decoration: InputDecoration(
                              helperStyle:
                                  const TextStyle(color: AppColores.black),
                              prefixIcon: const Icon(Icons.key),
                              labelText: AppTexts.password,
                              labelStyle:
                                  const TextStyle(color: AppColores.black),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  signInController.hidePassword.value =
                                      !signInController.hidePassword.value;
                                },
                                icon: signInController.hidePassword.value
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
                                    value: signInController.privacyPolicy.value,
                                    onChanged: (value) {
                                      signInController.privacyPolicy.value =
                                          value!;
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
                        SizedBox(
                            width: double.infinity,
                            child: CustomElevatedButton(
                              name: 'Sign In',
                              onPressed: () {
                                signInController.signIn();
                              },
                            )),
                        const SizedBox(
                          height: KSizes.defaultBtwSections,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                                onPressed: () {
                                  Get.to(() => const SignUpScreen());
                                },
                                child: const Text(AppTexts.createAccount))),
                      ],
                    ),
                  )),
              CustomFormDivider(
                dividerText: AppTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              const CustomSocialButton()
            ],
          ),
        )),
      ),
    );
  }
}
