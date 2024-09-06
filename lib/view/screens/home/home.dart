
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/home/widgets/home_appbar.dart';
import 'package:morder_ecommerce_app/view/screens/home/widgets/home_categories.dart';
import 'package:morder_ecommerce_app/view/screens/home/widgets/home_searchbar.dart';
import 'package:morder_ecommerce_app/view/screens/home/widgets/promo_slider.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/product_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
         CustomPrimaryHeaderContainer(
            headerHeight: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHomeAppBar(),
                CustomSearchContainer(
                  onpress: () {},
                ),
                const Padding(
                  padding: EdgeInsets.only(left: KSizes.spaceBtwItems),
                  child: Column(
                    children: [
                      CustomSectionHeading(
                        name: "Popular Categorizes",
                        subText: "view all",
                        showActionButton: true,
                        textColor: AppColores.white,
                      ),
                      SizedBox(
                        height: KSizes.sm,
                      ),
                      CustomHomeCategories(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: KSizes.spaceBtwItems, right: KSizes.spaceBtwItems),
            child: Column(
              children: [
                const CustomPromoSlider(),
                const SizedBox(
                  height: KSizes.sm,
                ),
                CustomSectionHeading(
                  name: "Popular Products",
                  subText: "view all",
                  onpress: () {},
                  showActionButton: true,
                ),
                const SizedBox(
                  height: KSizes.sm,
                ),
                CustomGridLayout(
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailScreen()));
                        },
                        child: const CustomProductCardVertical(
                          imagePath: AppImages.shoes3,
                        ));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
