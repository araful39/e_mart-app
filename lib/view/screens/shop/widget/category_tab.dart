import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/brand/brand_show_case.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';

class CustomCategoryTap extends StatelessWidget {
  const CustomCategoryTap({
    super.key,
    required this.images,
    required this.gridImage,
  });
  final List<String> images;
  final List<String> gridImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          children: [
            CustomBrandShowCase(
              images: images,
            ),
            CustomSectionHeading(
              name: "You might like",
              onpress: () {},
              showActionButton: true,
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            CustomGridLayout(
                itemCount: gridImage.length,
                itemBuilder: (_, index) {
                  return CustomProductCardVertical(
                    imagePath: gridImage[index],
                  );
                })
          ],
        ),
      ),
    );
  }
}
