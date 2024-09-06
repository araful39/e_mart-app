

import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/enums.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/circular_image_with_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/brand_title_width_verified_icon.dart';

class CustomBrandCard extends StatelessWidget {
  const CustomBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
    required this.brandImagePath,
    required this.brandName,
    required this.productQuantity,
    required this.isNetworkImage,
    this.height,
  });

  final bool showBorder;
  final void Function()? onTap;
  final String brandImagePath;
  final String brandName;
  final int productQuantity;
  final bool isNetworkImage;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomRoundedContainer(
        height: height ?? 90,
        borderColor: showBorder ? AppColores.dark : Colors.white,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(KSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                flex: 1,
                child: CircularImage(
                  imagePath: brandImagePath,
                  isNetworkImage: isNetworkImage,
                )),
            // const SizedBox(width: 2,),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBrandTitleWithVerifiedIcon(
                    title: brandName,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "$productQuantity products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
