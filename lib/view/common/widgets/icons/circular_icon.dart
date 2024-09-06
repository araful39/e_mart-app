import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    super.key,
    this.onPress,
    this.height,
    this.width,
    this.size,
    required this.icon,
    this.color,
    this.backgroundColor,
  });

  final VoidCallback? onPress;
  final double? height, width, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? AppColores.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(icon,color: color , size: size,),
      ),
    );
  }
}
