import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/product_detail_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/icons/circular_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/rounded_image.dart';

class CustomProductImageSlider extends StatelessWidget {
  const CustomProductImageSlider({
    super.key,
    required this.imageList,
  });
  final List imageList;
  @override
  Widget build(BuildContext context) {
    ProductDetailController productDetailController =
        Get.put(ProductDetailController());
    return Obx(
      () => CustomPrimaryHeaderContainer(
          isCircular: false,
          color: AppColores.black.withOpacity(0.5),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: NetworkImage(imageList[
                            productDetailController.imageIndex.value]),
                        height: 180,
                      ),
                    ],
                  ),
                  const CustomAppBar(
                    actions: [
                      CustomCircularIcon(
                        icon: Icons.favorite,
                        color: AppColores.red,
                      )
                    ],
                    showBackArrow: true,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          productDetailController.changeSliderImages(index);
                        },
                        child: CustomRoundedImage(
                            backgroundColor: AppColores.black,
                            border: Border.all(color: AppColores.white),
                            height: 50,
                            imageUrl: imageList[index],
                            isNetworkImage: false),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        width: KSizes.spaceBtwItems,
                      );
                    },
                    itemCount: imageList.length),
              ),
            ],
          )),
    );
  }
}
