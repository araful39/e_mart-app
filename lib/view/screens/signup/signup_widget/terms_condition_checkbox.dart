import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/singUp_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SingUpController.instance;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
                width: 20,
                height: 5,
                child: Obx(() => SizedBox(
                      height: 20,
                      width: 20,
                      child: Checkbox(
                          value: controller.privacyPolicy.value,
                          onChanged: (value) =>
                              controller.privacyPolicy.value = value!),
                    ))),
            const SizedBox(
              width: KSizes.spaceBtwItems,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${AppTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
            ])),
          ],
        ),
        const SizedBox(
          height: KSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${AppTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: AppColores.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColores.primary,
                  )),
          TextSpan(
              text: '${AppTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: AppTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: AppColores.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColores.primary)),
        ])),
      ],
    );
  }
}
