
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';

class CustomSearchContainer extends StatelessWidget {
   const CustomSearchContainer({
    super.key, this.text, this.icon, this.onpress,
    this.padding=const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
  });
  final String? text;
  final IconData? icon;
  final VoidCallback? onpress;
  final EdgeInsetsGeometry padding;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding:  padding ,
        child: Container(
            width:Get.width*0.8,
            padding: const EdgeInsets.all(KSizes.md),
            decoration: BoxDecoration(
                color: AppColores.light,
                borderRadius: BorderRadius.circular(KSizes.cardRadiusLg),
                border: Border.all(color: AppColores.grey)
            ),
            child:  Row(
              children: [
                Icon(icon ?? Icons.search,color: AppColores.darkGery,),
                const SizedBox(width: KSizes.xs,),
                Text( text ??"Search in Store",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )
        ),
      ),
    );
  }
}