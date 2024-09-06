import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        title:
            Text("WishList", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CustomCircularIcon(
            icon: CupertinoIcons.add,
            onPress: () => Get.to(() => const HomeScreen()),
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
                  itemBuilder: (_, index) => const CustomProductCardVertical(
                      imagePath: AppImages.shoes3))
            ],
          ),
        ),
      ),
    );
  }
}
