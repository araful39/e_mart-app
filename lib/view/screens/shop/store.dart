

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/tapbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/brand/brand_card.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_search_bar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/cart_menu_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/shop/view_brand.dart';
import 'package:morder_ecommerce_app/view/screens/shop/widget/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CustomCardCounterIcon(
              onpress: () {},
              iconColor: AppColores.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: AppColores.white,
                expandedHeight: 340,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(KSizes.sm),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: KSizes.lg,
                      ),
                       CustomSearchContainer(
                        padding: EdgeInsets.zero, onpress: () {  },
                      ),
                      const SizedBox(
                        height: KSizes.defaultBtwSections / 3,
                      ),
                      CustomSectionHeading(
                        name: "Featured Brands",
                        showActionButton: true,
                        subText: "view all",
                        onpress: () => Get.to(() => const AllBrand()),
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwItems / 1.5,
                      ),
                      CustomGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 60,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: const CustomBrandCard(
                                showBorder: true,
                                brandImagePath: AppImages.shoesName,
                                brandName: 'Nike',
                                productQuantity: 250,
                                isNetworkImage: false,
                              ),
                            );
                          })
                    ],
                  ),
                ),
                bottom: const CustomTapBar(
                  tabs: [
                    Text("Sports"),
                    Text("Furniture"),
                    Text("Electronics"),
                    Text("Clothes"),
                    Text("Cosmetics"),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CustomCategoryTap(
                images: [AppImages.shoes1, AppImages.shoes2, AppImages.shoes3],
                gridImage: [
                  AppImages.shoes3,
                  AppImages.shoes2,
                  AppImages.shoes2,
                  AppImages.shoes3,
                  AppImages.shoes2,
                  AppImages.shoes2,
                ],
              ),
              CustomCategoryTap(
                images: [],
                gridImage: [],
              ),
              CustomCategoryTap(
                images: [],
                gridImage: [],
              ),
              CustomCategoryTap(
                images: [],
                gridImage: [],
              ),
              CustomCategoryTap(
                images: [],
                gridImage: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
