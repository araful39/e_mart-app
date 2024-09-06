import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';

class CustomLoginHeader extends StatelessWidget {
  const CustomLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        )
      ],
    );
  }
}
