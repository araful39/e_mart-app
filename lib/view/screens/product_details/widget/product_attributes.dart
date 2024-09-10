import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/details_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';

class CustomProductAttributes extends StatelessWidget {
  const CustomProductAttributes(
      {super.key, required this.sizes, required this.colors});
  final List<String> sizes;
  final List<String> colors;
  @override
  Widget build(BuildContext context) {
    DetailsController detailsController = Get.put(DetailsController());
    return Column(
      children: [
        colors.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomSectionHeading(name: "Colors"),
                  const SizedBox(
                    height: KSizes.sm,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          detailsController.colors.value = index;
                          detailsController.selectedColor.value = colors[index];
                        },
                        child: Obx(
                          () => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: KSizes.sm, vertical: KSizes.sm),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColores.black),
                              borderRadius: BorderRadius.circular(15),
                              color: detailsController.colors.value == index
                                  ? detailsController
                                      .getColorByName(colors[index])
                                  : detailsController
                                      .getColorByName(colors[index]),
                            ),
                            height: 25,
                            width: 40,
                            child: detailsController.colors.value == index
                                ? const Icon(
                                    Icons.done,
                                    color: AppColores.white,
                                    size: 30,
                                  )
                                : const SizedBox(),
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 2),
                  )
                ],
              )
            : const SizedBox(),
        const SizedBox(
          height: KSizes.spaceBtwItems,
        ),
        sizes.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomSectionHeading(name: "Size"),
                  const SizedBox(
                    height: KSizes.sm,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: sizes.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          detailsController.sizes.value = index;
                        },
                        child: Obx(
                          () => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: KSizes.sm, vertical: KSizes.sm),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColores.black),
                              borderRadius: BorderRadius.circular(15),
                              color: detailsController.sizes.value == index
                                  ? AppColores.primary
                                  : AppColores.white,
                            ),
                            height: 25,
                            width: 40,
                            child: Center(
                              child: Text(
                                sizes[index],
                                style: TextStyle(
                                  color: detailsController.sizes.value == index
                                      ? AppColores.white
                                      : AppColores.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 2),
                  )
                ],
              )
            : SizedBox(),
      ],
    );
  }
}
