import 'package:morder_ecommerce_app/utills/constants/enums.dart';

import 'package:flutter/material.dart';

class CustomBrandTitleText extends StatelessWidget {
  const CustomBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    required this.textColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: brandTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium?.apply(color: textColor)
          : brandTextSizes == TextSizes.large
              ? Theme.of(context).textTheme.titleLarge!.apply(color: textColor)
              : Theme.of(context).textTheme.bodyMedium!.apply(color: textColor),
    );
  }
}
