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
  const CustomProductMetaData({super.key});

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
                "25%",
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
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: KSizes.spaceBtwItems,
            ),
            const CustomProductPriceText(
              price: "150",
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: KSizes.sm,
        ),
        const CustomProductTitleText(title: "Green Nike Sports Shoes"),
        const SizedBox(
          height: KSizes.sm,
        ),
        const Row(
          children: [
            CustomProductTitleText(title: "Status"),
            SizedBox(
              width: KSizes.sm,
            ),
            Text("in Stack"),
          ],
        ),
        const SizedBox(
          height: KSizes.sm,
        ),
        const Row(
          children: [
            CircularImage(
              imagePath: AppImages.shoesName,
              isNetworkImage: false,
              width: 40,
              height: 40,
            ),
            CustomBrandTitleWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
