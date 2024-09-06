import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

class CustomRatingsProgressIndicator extends StatelessWidget {
  const CustomRatingsProgressIndicator({
    super.key,
    required this.ratingCount,
    required this.value,
    this.color,
  });
  final String ratingCount;
  final double value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ratingCount,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 2,
          child: SizedBox(
            height: 10,
            width: double.infinity,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: value,
              valueColor: AlwaysStoppedAnimation(color ?? AppColores.success),
              backgroundColor: AppColores.grey,
            ),
          ),
        ),
      ],
    );
  }
}
