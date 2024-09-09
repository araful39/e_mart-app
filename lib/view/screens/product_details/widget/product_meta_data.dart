import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/enums.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/circular_image_with_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_price_text.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_title_text.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/brand_title_width_verified_icon.dart';

class CustomProductMetaData extends StatelessWidget {
  const CustomProductMetaData(
      {super.key,
      required this.discountPrice,
      required this.regularPrice,
      required this.productName,
      required this.status,
      required this.brandName});
  final double discountPrice;
  final double regularPrice;
  final String productName;
  final String status;
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomRoundedContainer(
              backgroundColor: AppColores.secondary.withOpacity(0.8),
              radius: KSizes.sm,
              padding: const EdgeInsets.symmetric(
                  horizontal: KSizes.sm, vertical: KSizes.xs),
              child: Text(
                "\$ $discountPrice %",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: AppColores.black),
              ),
            ),
            const SizedBox(
              width: KSizes.spaceBtwItems,
            ),
            Text(
              "\$ $regularPrice",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.apply(decoration: TextDecoration.lineThrough),
            ),
            // const SizedBox(
            //   width: KSizes.spaceBtwItems,
            // ),
            // const CustomProductPriceText(
            //   price: "150",
            //   isLarge: true,
            // )
          ],
        ),
        const SizedBox(
          height: KSizes.sm,
        ),
        CustomProductTitleText(title: productName),
        const SizedBox(
          height: KSizes.sm,
        ),
        Row(
          children: [
            const CustomProductTitleText(title: "Status"),
            const SizedBox(
              width: KSizes.sm,
            ),
            Text(status),
          ],
        ),
        const SizedBox(
          height: KSizes.sm,
        ),
        Row(
          children: [
            const CircularImage(
              imagePath: AppImages.shoesName,
              isNetworkImage: false,
              width: 40,
              height: 40,
            ),
            CustomBrandTitleWithVerifiedIcon(
              title: brandName,
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
