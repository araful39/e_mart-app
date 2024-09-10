import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/cart_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/button/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product-quntity_add_remove.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_price_text.dart';
import 'package:morder_ecommerce_app/view/screens/cart/widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => ListView.separated(
              itemBuilder: (context, _) {
                var cartList = cartController.cartList[_];
                return Column(
                  children: [
                    CustomCartItem(
                      imagePath: cartList.images[0],
                      isNetworkImage: true,
                      brandTitle: cartList.brand,
                      productTitle: cartList.name,
                    ),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomProductPriceText(
                            price: cartList.discountPrice.toString()),
                        CustomProductQuantityAddRemove(
                          count: 1,
                          onTapAdd: () {
                            // Update the UI
                          },
                          onTapRemove: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            size: 40,
                          ),
                          onPressed: () {
                            cartController.cartList.removeAt(_);
                          },
                        ),
                      ],
                    )
                  ],
                );
              },
              separatorBuilder: (_, __) => const SizedBox(
                    height: KSizes.sm,
                  ),
              itemCount: cartController.cartList.length),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
        child: Obx(
          () => CustomElevatedButton(
              backgroundColor: AppColores.primary,
              name:
                  'Total Price: \$${cartController.calculateTotalPrice().toStringAsFixed(2)}',
              onPressed: () {}),
        ),
      ),
    );
  }
}
