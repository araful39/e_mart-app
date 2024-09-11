import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';

class CustomUserAddress extends StatelessWidget {
  const CustomUserAddress({
    super.key,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.country,
    required this.showIcon,
  });
  final String name;
  final String phoneNumber;
  final String address;
  final String country;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: CustomRoundedContainer(
        padding: const EdgeInsets.all(15),
        borderColor: AppColores.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSectionHeading(name: name),
                showIcon
                    ? const Icon(
                        Icons.check_circle,
                        size: 40,
                        color: AppColores.primary,
                      )
                    : const SizedBox()
              ],
            ),
            Text(phoneNumber),
            Text(address),
            Text(country),
          ],
        ),
      ),
    );
  }
}
