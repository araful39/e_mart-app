
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/product_detail_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/button/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product-quntity_add_remove.dart';

class CustomBottomAddToCart extends StatelessWidget {
  const CustomBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(ProductDetailController());
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: KSizes.sm,
         vertical: KSizes.defaultSpace / 2),
      decoration: const BoxDecoration(
          color: AppColores.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(KSizes.cardRadiusLg),
              topRight: Radius.circular(KSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Obx(()=> CustomProductQuantityAddRemove(count: controller.productCount.value, onTapAdd: ()=>controller.increment(), onTapRemove: ()=>controller.decrement(),)),
          ),
          Flexible(
              flex: 4,
              child: CustomElevatedButton(name: "Add To Card", onPressed: (){},backgroundColor: AppColores.darkGery,))
        ],
      ),
    );
  }
}
