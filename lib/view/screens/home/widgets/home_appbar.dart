import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/cart_menu_icon.dart';
import 'package:morder_ecommerce_app/view/screens/cart/cart.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        children: [
          Text(
            AppTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.apply(color: AppColores.grey),
          ),
          Text(
            AppTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.apply(color: AppColores.grey),
          ),
        ],
      ),
      actions: [
        CustomCardCounterIcon(
            iconColor: AppColores.white,
            onpress: () => Get.to(() => const CartScreen()))
      ],
    );
  }
}
