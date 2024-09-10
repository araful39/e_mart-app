import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/cart_controller.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/wish_list_controller.dart';
import 'package:morder_ecommerce_app/damy_data/damy_data.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/brand/brand_show_case.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';

class CustomCategoryTap extends StatelessWidget {
  const CustomCategoryTap({
    super.key,
    required this.images,
    required this.category,
  });
  final String category;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    var wishListController = Get.put(WishListController());
    var cartListController = Get.put(CartController());
    final products = allProductList
        .where((product) => product.category == category)
        .toList();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          children: [
            CustomBrandShowCase(
              images: images,
              category: category,
              productQuantity: 250,
            ),
            CustomSectionHeading(
              textColor: AppColores.primary,
              name: "You might like",
              onpress: () {},
              showActionButton: true,
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            CustomGridLayout(
                itemCount: products.length,
                itemBuilder: (_, index) {
                  var product = products[index];
                  bool isInWishList = wishListController.wishList
                      .any((item) => item.id == product.id);
                  return CustomProductCardVertical(
                    imagePath: product.images[0],
                    discount: product.discountPrice.toString(),
                    productName: product.name,
                    brandName: product.brand,
                    price: product.regularPrice.toString(),
                    addToCart: () {
                      cartListController.addToCartList(product);
                    },
                    addToLove: () {
                      wishListController.addToWishList(product);
                    },
                    isNetworkImage: true,
                    favoriteColor: isInWishList ? Colors.red : Colors.grey,
                  );
                })
          ],
        ),
      ),
    );
  }
}
