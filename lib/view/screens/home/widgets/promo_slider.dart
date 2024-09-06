import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/home_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/rounded_image.dart';

class CustomPromoSlider extends StatelessWidget {
  const CustomPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        Obx(
          () {
            if (controller.carouselSlides.isEmpty) {
              return const CircularProgressIndicator();
            }

            return CarouselSlider.builder(
              itemCount: controller.carouselSlides.length,
              itemBuilder: (context, index, __) {
                return CustomRoundedImage(
                    imageUrl: controller.carouselSlides[index]['banner'],
                    isNetworkImage: true);
              },
              options: CarouselOptions(
                  onPageChanged: (index, _) =>
                      controller.updatePageIndicator(index),

                  enlargeCenterPage: false,

                  viewportFraction: 1,

                  autoPlayCurve: Curves.bounceOut,
                  height: 100,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 500)),
            );
          },
        ),
        const SizedBox(
          height: KSizes.sm,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < controller.carouselSlides.length; i++)
                CustomCircularContainer(
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? AppColores.primary
                      : AppColores.grey,
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}
