
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/brand/brand_card.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';

class AllBrand extends StatelessWidget {
  const AllBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Brand"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomSectionHeading(name: "Brands"),
              const SizedBox(
                height: KSizes.md,
              ),
              CustomGridLayout(
                  mainAxisExtent: 70,
                  itemCount: 50,
                  itemBuilder: (_, __) {
                    return const CustomBrandCard(
                        showBorder: true,
                        brandImagePath: AppImages.shoesName,
                        brandName: "Nike",
                        productQuantity: 300,
                        isNetworkImage: false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
