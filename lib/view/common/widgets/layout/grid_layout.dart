import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';

class CustomGridLayout extends StatelessWidget {
  const CustomGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: KSizes.gridViewSpacing,
            crossAxisSpacing: KSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent ?? 288),
        itemBuilder: itemBuilder);
  }
}
