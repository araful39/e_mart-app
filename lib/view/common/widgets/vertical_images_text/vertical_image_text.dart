
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';

class CustomVerticalImageText extends StatelessWidget {
  const CustomVerticalImageText({
    super.key,
    required this.text,
    required this.netImagePath,
    this.backgroundColor,
   this.textColor,
   this.onpress,
  });
  final String text;
  final String netImagePath;
  final Color? textColor;
  final Color? backgroundColor;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(right: KSizes.sm),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 60,
              padding: const EdgeInsets.all(KSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? AppColores.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: NetworkImage(netImagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
                width: 50,
                child: Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color:textColor?? AppColores.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
