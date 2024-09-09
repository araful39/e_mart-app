import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/styles/shadow_styles.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/icons/circular_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/rounded_image.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_title_text.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/brand_title_width_verified_icon.dart';

import '../product_price_text.dart';

class CustomProductCardVertical extends StatelessWidget {
  const CustomProductCardVertical({
    super.key,
    required this.imagePath,
    required this.discount,
    required this.productName,
    required this.brandName,
    required this.price, required this.addToCart, required this.addToLove,
  });
  final String imagePath;
  final String discount;
  final String productName;
  final String brandName;
  final String price;
  final VoidCallback addToCart;
  final VoidCallback addToLove;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(KSizes.productImageRadius),
          color: AppColores.white),
      child: Column(
        children: [
          CustomRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(KSizes.xs),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  child: CustomRoundedImage(
                      imageUrl: imagePath, height: 100, isNetworkImage: false),
                ),
                Positioned(
                  top: 12,
                  child: CustomRoundedContainer(
                    radius: KSizes.sm,
                    backgroundColor: AppColores.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: KSizes.sm, vertical: KSizes.xs),
                    child: Text(
                      "%$discount",
                      style: const TextStyle(color: AppColores.black),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    top: 0,
                    child: CustomCircularIcon(
                      onPress: addToLove,
                      icon: Icons.favorite,
                      color: AppColores.error,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: KSizes.spaceBtwItems / 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: KSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomProductTitleText(
                  title: productName,
                  smallSize: true,
                  maxLine: 1,
                ),
                const SizedBox(
                  height: KSizes.spaceBtwItems / 2,
                ),
                CustomBrandTitleWithVerifiedIcon(
                  title: brandName,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomProductPriceText(
                        price: price,
                      ),
                      InkWell(
                        onTap:addToCart,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: AppColores.dark,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(KSizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      KSizes.productImageRadius))),
                          child: const SizedBox(
                              height: KSizes.iconLg * 1.2,
                              width: KSizes.iconLg * 1.2,
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: AppColores.white,
                              ))),
                        ),
                      )
                    ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
