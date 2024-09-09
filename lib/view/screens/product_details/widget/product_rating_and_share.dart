import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';

class CustomRatingAndShare extends StatelessWidget {
  const CustomRatingAndShare({
    super.key,
    required this.ratings,
    required this.totalRatings,
  });
  final double ratings;
  final int totalRatings;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.orangeAccent,
            ),
            const SizedBox(
              width: KSizes.sm,
            ),
            Text("$ratings"),
            Text("($totalRatings)")
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ],
    );
  }
}
