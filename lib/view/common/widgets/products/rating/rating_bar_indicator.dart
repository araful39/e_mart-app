import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';


class CustomRatingBarIndicator extends StatelessWidget {
  const CustomRatingBarIndicator({
    super.key, required this.rating, this.itemCount, this.unratedColor, this.iconColor, this.icon, this.date,
  });

  final double rating;
  final int? itemCount;
  final Color? unratedColor;
  final Color? iconColor;
  final IconData? icon;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
            rating: rating,
            unratedColor: unratedColor?? Colors.grey,
            itemSize: 20,
            direction: Axis.horizontal,
            itemCount:itemCount?? 5,
            itemBuilder: (_,__){
              return  Icon(icon ?? Icons.star,color: iconColor?? Colors.amber,);
            }),
        const SizedBox(
          width: KSizes.sm ,
        ),
         Text(date ?? "")
      ],    );
  }
}