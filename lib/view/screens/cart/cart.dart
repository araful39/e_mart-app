import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product-quntity_add_remove.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_price_text.dart';
import 'package:morder_ecommerce_app/view/screens/cart/widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, _) => Column(
                  children: [
                    const CustomCartItem(
                      imagePath: AppImages.shoes5,
                      isNetworkImage: false,
                      brandTitle: "Nike",
                      productTitle: "Black Sports Shoe",
                    ),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 90,
                            ),
                            CustomProductQuantityAddRemove(
                              count: 1,
                              onTapAdd: () {},
                              onTapRemove: () {},
                            ),
                          ],
                        ),
                        const CustomProductPriceText(price: "40.2")
                      ],
                    )
                  ],
                ),
            separatorBuilder: (_, __) => const SizedBox(
                  height: KSizes.sm,
                ),
            itemCount: 10),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$400'),
        ),
      ),
    );
  }
}
