
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/screens/product_review_and_rating/widget/rating_progres_indicator.dart';
class CustomOverAllRatings extends StatelessWidget {
  const CustomOverAllRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("4.8",style: Theme.of(context).textTheme.displayLarge,),
        const SizedBox(
          width: KSizes.spaceBtwItems,
        ),
          const Flexible(
          flex: 4,
          child: Column(
            children: [
              CustomRatingsProgressIndicator(ratingCount: '5', value: 1,),
              CustomRatingsProgressIndicator(ratingCount: '4', value: 0.7,),
              CustomRatingsProgressIndicator(ratingCount: '3', value: 0.5,),
              CustomRatingsProgressIndicator(ratingCount: '2', value: 0.3,),
              CustomRatingsProgressIndicator(ratingCount: ' 1', value: 0.2,),

            ],
          ),
        )
      ],
    );
  }
}