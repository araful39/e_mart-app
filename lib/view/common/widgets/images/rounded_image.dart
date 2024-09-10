import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';

class CustomRoundedImage extends StatelessWidget {
  const CustomRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,

    this.imageRadius,
    this.border,
    this.backgroundColor,
    this.fit,
    this.padding,
required this.isNetworkImage,
    this.onPress,
  });
  final double? width, height;
  final String imageUrl;
  final double? imageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final bool isNetworkImage;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor ?? AppColores.white,
          borderRadius:
          BorderRadius.circular(KSizes.xs)
          ,
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(imageRadius ?? KSizes.md),
            child:
            Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}