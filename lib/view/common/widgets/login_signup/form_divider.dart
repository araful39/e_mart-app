import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

class CustomFormDivider extends StatelessWidget {
  const CustomFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
            child: Divider(
          color: AppColores.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Flexible(
            child: Divider(
          color: AppColores.grey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        ))
      ],
    );
  }
}
