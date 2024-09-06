import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/styles/spacing_styles.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/form_divider.dart';
import 'package:morder_ecommerce_app/view/common/widgets/login_signup/social_buttons.dart';
import 'package:morder_ecommerce_app/view/screens/login/widgets/login_form.dart';
import 'package:morder_ecommerce_app/view/screens/login/widgets/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const CustomLoginHeader(),
              const CustomLoginForm(),
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
