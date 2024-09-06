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
    super.key, required this.imagePath,
  });
  final String imagePath;

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

                      imageUrl:imagePath,
                      height: 100,
                      isNetworkImage: false),
                ),
                Positioned(
                  top: 12,
                  child: CustomRoundedContainer(
                    radius: KSizes.sm,
                    backgroundColor: AppColores.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: KSizes.sm, vertical: KSizes.xs),
                    child: Text(
                      "%25",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.apply(color: AppColores.black),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    top: 0,
                    child: CustomCircularIcon(
                      onPress: () {},
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
                const CustomProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),
                const SizedBox(
                  height: KSizes.spaceBtwItems / 2,
                ),
                 const CustomBrandTitleWithVerifiedIcon(
                  title: 'Nike',
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomProductPriceText(
                        price: '30.0',
                      ),
                      InkWell(
                        onTap: () {
                          Get.dialog(
                              transitionDuration: const Duration(seconds: 1),
                              barrierDismissible: false,
                            Dialog(
                              backgroundColor: AppColores.white,
                              child: SizedBox(
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Product Add",style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
                                      const SizedBox(
                                        height: KSizes.defaultSpace,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(onPressed: ()=>Get.back(), child: const Text("Yess ")),
                                          ElevatedButton(onPressed:  ()=>Get.back(), child: const Text("No ")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            )

                          );

                        },
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
