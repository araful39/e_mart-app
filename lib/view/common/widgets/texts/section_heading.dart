import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    required this.name,
    this.onpress,
    this.subText,
    this.showActionButton = false,
    this.textColor,
    this.buttonColor,
  });
  final String name;
  final Color? textColor;
  final Color? buttonColor;
  final String? subText;
  final bool showActionButton;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(

         name,
          style: TextStyle(
              color: textColor ?? AppColores.black,
              fontSize: KSizes.fontSizeLg,
              fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
              onPressed: onpress,
              child: Text(
                subText ?? "view ",
                style: TextStyle(
                    color: buttonColor ?? AppColores.black,
                    fontSize: KSizes.fontSizeLg),
              )),
      ],
    );
  }
}
