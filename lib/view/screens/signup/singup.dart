import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/form_divider.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/social_buttons.dart';
import 'package:morder_ecommerce_app/view/screens/signup/signup_widget/signup_form.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                const CustomSingUpForm(),
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
