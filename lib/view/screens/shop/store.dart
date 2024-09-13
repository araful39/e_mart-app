import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/tapbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/brand/brand_card.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_search_bar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/cart_menu_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/cart/cart.dart';
import 'package:morder_ecommerce_app/view/screens/search.dart';
import 'package:morder_ecommerce_app/view/screens/shop/view_brand.dart';
import 'package:morder_ecommerce_app/view/screens/shop/widget/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CustomPrimaryHeaderContainer(
                headerHeight: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: KSizes.md, vertical: KSizes.md),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Store",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: KSizes.fontSizeXl,
                            color: AppColores.white),
                      ),
                      CustomCardCounterIcon(
                        onpress: () {
                          Get.to(CartScreen());
                        },
                        iconColor: AppColores.white,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        pinned: true,
                        scrolledUnderElevation: 0,
                        floating: true,
                        backgroundColor: AppColores.white,
                        expandedHeight: 280,
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
                                padding: EdgeInsets.zero,
                                onpress: () {
                                  Get.to(()=>SearchScreen());
                                },
                              ),
                              const SizedBox(
                                height: KSizes.defaultBtwSections / 3,
                              ),
                              CustomSectionHeading(
                                textColor: AppColores.black,
                                name: "Featured Brands",
                                showActionButton: true,
                                subText: "view all",
                                onpress: () => Get.to(() => const AllBrand()),
                              ),
                              const SizedBox(
                                height: KSizes.spaceBtwItems / 1.5,
                              ),
                              CustomGridLayout(
                                  itemCount: 2,
                                  mainAxisExtent: 65,
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
                            Text("Electronics"),
                            Text("Furniture"),
                            Text("Sports"),
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
                        images: [],
                        category: 'Electronics',
                      ),
                      CustomCategoryTap(
                        images: [],
                        category: 'Furniture',
                      ),
                      CustomCategoryTap(
                        images: [
                          AppImages.shoes1,
                          AppImages.shoes2,
                          AppImages.shoes3
                        ],
                        category: 'Sports',
                      ),
                      CustomCategoryTap(
                        images: [AppImages.cloth],
                        category: 'Clothes',
                      ),
                      CustomCategoryTap(
                        images: [],
                        category: 'Cosmetics',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
