
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColores.grey,borderRadius: BorderRadius.circular(100)
            ),
            child:
            IconButton(
                onPressed: (){},
                icon:
                const Image(height: KSizes.iconMd,width: KSizes.iconMd,image: AssetImage(AppImages.google)))),
        const SizedBox(width: KSizes.spaceBtwItems,),
        Container(
            decoration: BoxDecoration(
                color: AppColores.grey,borderRadius: BorderRadius.circular(100)
            ),
            child:
            IconButton(
                onPressed: (){},
                icon:
                const Image(height: KSizes.iconMd,width: KSizes.iconMd,image: AssetImage(AppImages.facebook)))),
      ],
    );
  }
}