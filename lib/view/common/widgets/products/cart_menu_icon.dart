import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/cart_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';

class CustomCardCounterIcon extends StatelessWidget {
  const CustomCardCounterIcon({
    super.key,  this.iconColor, required this.onpress,
  });
  final Color? iconColor;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    CartController cartController=Get.put(CartController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onpress,
        child: Badge(
          label:  Obx(
            ()=> Text(
             cartController.cartList.isNotEmpty? "${cartController.cartList.length}":"0",
              style: TextStyle(
                  color: AppColores.white, fontSize: 12),
            ),
          ),
          child:  Icon(
            Icons.shopping_cart,
            color: iconColor ?? AppColores.white,
          ),
        ),
      ),
    );
  }
}