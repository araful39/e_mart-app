
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/brand/brand_card.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';

class CustomBrandShowCase extends StatelessWidget {
  const CustomBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      borderColor: AppColores.darkGery,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(KSizes.sm),
      margin: const EdgeInsets.only(bottom: KSizes.spaceBtwItems),
      child: Column(
        children: [
          const CustomBrandCard(
            showBorder: false,
            brandImagePath: AppImages.shoesName,
            brandName: 'Panda',
            productQuantity: 100,
            isNetworkImage: false,
          ),
          Row(
            children: images
                .map((image) => brandTopProductImagesWidget(image))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImagesWidget(String image) {
  return Expanded(
      child: CustomRoundedContainer(
    height: 70,
    backgroundColor: AppColores.light,
    padding: const EdgeInsets.all(KSizes.sm),
    margin: const EdgeInsets.only(right: KSizes.sm),
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.contain,
    ),
  ));
}
