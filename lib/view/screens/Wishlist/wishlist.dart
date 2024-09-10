import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/wish_list_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/icons/circular_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/screens/home/home.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WishListController wishListController = Get.put(WishListController());
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("WishList",
                            style: TextStyle(
                                color: AppColores.white,
                                fontSize: KSizes.fontSizeXl)),

                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomGridLayout(
                    itemCount: wishListController.wishList.length,
                    itemBuilder: (_, index) {
                      var list = wishListController.wishList[index];
                      return CustomProductCardVertical(
                        favoriteButton: false,
                        imagePath: list.images[0],
                        discount: list.discountPrice.toString(),
                        productName: list.name,
                        brandName: list.brand,
                        price: list.regularPrice.toString(),
                        addToCart: () {
                          EasyLoading.showSuccess("Add To Cart");
                        },
                        isNetworkImage: true,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
