
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
class CustomRatingAndShare extends StatelessWidget {
  const CustomRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.orangeAccent,
            ),
            SizedBox(
              width: KSizes.sm,
            ),
            Text("5.0"),
            Text("(199)")
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ],
    );
  }
}