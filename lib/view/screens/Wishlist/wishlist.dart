import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/icons/circular_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/screens/home/home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text("WishList",
            style: TextStyle(
                color: AppColores.black, fontSize: KSizes.fontSizeXl)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: KSizes.md),
            child: CustomCircularIcon(
              icon: CupertinoIcons.add,
              onPress: () => Get.off(() => const HomeScreen()),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              CustomGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => CustomProductCardVertical(
                        imagePath: AppImages.shoes3,
                        discount: '25',
                        productName: 'Green Nike Air Shoes',
                        brandName: 'Nike',
                        price: '300',
                        addToCart: () {
                          EasyLoading.showSuccess("Add To Cart");
                        },
                        addToLove: () {
                          EasyLoading.showSuccess("Add To Favorite");
                        },
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
