import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onpress,
        child: Badge(
          label: const Text(
            "5",
            style: TextStyle(
                color: AppColores.white, fontSize: 12),
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