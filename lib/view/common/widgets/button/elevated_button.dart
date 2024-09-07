import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.name,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
  });

  final String name;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
      ),
      child: SizedBox(
        height: height,
        width: width ?? double.infinity,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(backgroundColor: backgroundColor??AppColores.primary),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name,style: TextStyle(color: AppColores.white),),
            )),
      ),
    );
  }
}
