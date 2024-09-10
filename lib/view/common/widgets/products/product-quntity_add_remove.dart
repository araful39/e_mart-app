import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';

class CustomProductQuantityAddRemove extends StatelessWidget {
  const CustomProductQuantityAddRemove({
    super.key,
    required this.count,
    required this.onTapAdd,
    required this.onTapRemove,
  });
  final int count;
  final VoidCallback onTapAdd;
  final VoidCallback onTapRemove;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTapRemove,
          child: const CustomRoundedContainer(
            height: 35,
            width: 35,
            backgroundColor: AppColores.primary,
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: KSizes.md,
        ),
        SizedBox(
          width: 20,
          child: Text(
            count.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const SizedBox(
          width: KSizes.md,
        ),
        InkWell(
          onTap: onTapAdd,
          child: const CustomRoundedContainer(
            height: 35,
            width: 35,
            backgroundColor: AppColores.primary,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
