
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/rounded_image.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_title_text.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/brand_title_width_verified_icon.dart';
class CustomCartItem extends StatelessWidget {
  const CustomCartItem({
    super.key, required this.imagePath, required this.isNetworkImage, required this.brandTitle, required this.productTitle,
  });

  final String imagePath;
  final bool isNetworkImage;
  final String brandTitle;
  final String productTitle;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CustomRoundedImage(
           backgroundColor: AppColores.grey,
           imageUrl: imagePath, isNetworkImage: isNetworkImage,height: 70,width: 70,),
         const SizedBox(
          width: KSizes.spaceBtwItems,
        ),

        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CustomBrandTitleWithVerifiedIcon(title: brandTitle),
                CustomProductTitleText(title: productTitle,maxLine: 1,),
              Text.rich(
                  TextSpan(
                      children: [

                        TextSpan(text: "Color ",style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Green ",style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Size ",style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Uk 08 ",style: Theme.of(context).textTheme.bodySmall),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}