import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/icons/circular_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/screens/home/home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomPrimaryHeaderContainer(
                  headerHeight: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: KSizes.md, vertical: KSizes.md),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("WishList",
                            style: TextStyle(
                                color: AppColores.white,
                                fontSize: KSizes.fontSizeXl)),
                        CustomCircularIcon(
                          icon: CupertinoIcons.add,
                          onPress: () => Get.off(() => const HomeScreen()),
                        )
                      ],
                    ),
                  )),
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
