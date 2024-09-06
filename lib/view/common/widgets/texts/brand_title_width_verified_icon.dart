import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/enums.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/r_brand_title_text.dart';


class CustomBrandTitleWithVerifiedIcon extends StatelessWidget {
  const CustomBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColores.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: CustomBrandTitleText(
            title: title,
            maxLines: maxLines,
            textColor: textColor,
            textAlign: textAlign,
            brandTextSizes: brandTextSize,
          ),
        ),
        const SizedBox(
          width: KSizes.xs,
        ),
        const Icon(
          Icons.verified,
          color: AppColores.primary,
          size: KSizes.iconXs,
        )
      ],
    );
  }
}
