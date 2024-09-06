import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/utills/helpers/helpers.dart';
import 'package:morder_ecommerce_app/view/common/styles/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.images,
      required this.title,
      required this.subTile,
      required this.onPress});
  final String images, title, subTile;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Image(
                  width: AppHelperFunctions.screenWidth() * 0.6,
                  image: AssetImage(images)),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(
                subTile,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: KSizes.defaultBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPress,
                  child: const Text(AppTexts.rContinue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
