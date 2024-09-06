
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/chips/choice_chips.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_title_text.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';

class CustomProductAttributes extends StatefulWidget {
  const CustomProductAttributes({super.key});

  @override
  State<CustomProductAttributes> createState() => _CustomProductAttributesState();
}

class _CustomProductAttributesState extends State<CustomProductAttributes> {

  final bool isClick=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRoundedContainer(
          padding: const EdgeInsets.all(KSizes.md),
          backgroundColor: AppColores.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const CustomSectionHeading(
                    name: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: KSizes.md,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const CustomProductTitleText(
                            title: "Price: ",
                            smallSize: true,
                          ),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: KSizes.spaceBtwItems,
                          ),
                          Text(
                            "\$20",
                            style: Theme.of(context).textTheme.titleSmall,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const CustomProductTitleText(
                            title: "Stack:  ",
                            smallSize: true,
                          ),
                          Text(
                            "in Stack",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(
          height: KSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(name: "Colors"),
            const SizedBox(
              height: KSizes.sm,
            ),
            Wrap(
              spacing: 15,
              children: [
              CustomChoiceChip(
                text: 'Green',
                selected: false,
                onSelected: (value) {},
              ),
              CustomChoiceChip(
                text: 'Yellow',
                selected: true,
                onSelected: (value) {},
              ),
              CustomChoiceChip(
                text: 'Red',
                selected: false,
                onSelected: (value) {},
              ),
              CustomChoiceChip(
                text: 'Blue',
                selected: false,
                onSelected: (value) {},
              ),
              CustomChoiceChip(
                text: 'Pink',
                selected: false,
                onSelected: (value) {},
              ),
              CustomChoiceChip(
                text: 'Purple',
                selected: false,
                onSelected: (value) {},
              ),
              CustomChoiceChip(
                text: 'Red',
                selected: false,
                onSelected: (value) {},
              ),
              CustomChoiceChip(
                text: 'Blue',
                selected: false,
                onSelected: (value) {},
              ),
            ],)
          ],
        ),
        const SizedBox(
          height: KSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(name: "Size"),
            const SizedBox(
              height: KSizes.sm,
            ),
       Wrap(
         spacing: 8,
         children: [
           CustomChoiceChip(
             text: 'EU 34',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),

           CustomChoiceChip(
             text: 'EU 35',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),

           CustomChoiceChip(
             text: 'EU 36',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),

           CustomChoiceChip(
             text: 'EU 37',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),
         ],
       )
          ],
        ),
      ],
    );
  }
}
