import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';



class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.imagePath,
    this.width=86,
   this.height=86,
    this.padding=KSizes.sm,
    this.fit=BoxFit.cover,
    required this.isNetworkImage,
    this.overlayColor,
    this.backgroundColor,
  });
  final String imagePath;
  final double width, height, padding;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage? NetworkImage(
      imagePath,
        ) : AssetImage(imagePath) as ImageProvider,
        width: 150,
      ),
    );
  }
}
