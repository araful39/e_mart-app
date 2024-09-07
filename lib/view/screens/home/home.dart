import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/home_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_search_bar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/rounded_image.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/cart_menu_icon.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_vertical_image_text.dart';
import 'package:morder_ecommerce_app/view/screens/cart/cart.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/product_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomPrimaryHeaderContainer(
              headerHeight: 310,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: KSizes.md, top: KSizes.md, right: KSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppTexts.homeAppbarTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.apply(color: AppColores.grey),
                            ),
                            Text(
                              AppTexts.homeAppbarSubTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.apply(color: AppColores.grey),
                            ),
                          ],
                        ),
                        CustomCardCounterIcon(onpress: () {
                          Get.to(const CartScreen());
                        })
                      ],
                    ),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    CustomSearchContainer(
                      onpress: () {},
                    ),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    CustomSectionHeading(
                      showActionButton: true,
                      name: "Category",
                      subText: "view all",
                      onpress: () {},
                    ),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    SizedBox(
                      height: 85,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 15,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return const CustomVerticalImageText(
                              text: "Product ",
                              netImagePath:
                                  "https://github.com/user-attachments/assets/5beac86f-2092-4e63-8af3-fc354584e362",
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: KSizes.spaceBtwItems, right: KSizes.spaceBtwItems),
              child: Column(
                children: [
                  Obx(() => CarouselSlider.builder(
                        itemCount: homeController.carouselSlides.length,
                        itemBuilder: (context, index, __) {
                          return CustomRoundedImage(
                              imageUrl: homeController.carouselSlides[index],
                              isNetworkImage: true);
                        },
                        options: CarouselOptions(
                            onPageChanged: (index, _) =>
                                homeController.updatePageIndicator(index),
                            enlargeCenterPage: false,
                            viewportFraction: 2,
                            aspectRatio: 12 / 7,
                            autoPlayCurve: Curves.bounceOut,
                            height: 100,
                            autoPlay: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 500)),
                      )),
                  const SizedBox(
                    height: KSizes.sm,
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0;
                            i < homeController.carouselSlides.length;
                            i++)
                          CustomCircularContainer(
                            backgroundColor:
                                homeController.carousalCurrentIndex.value == i
                                    ? AppColores.primary
                                    : AppColores.grey,
                            height: 15,
                            width: 15,
                            margin: const EdgeInsets.only(right: 10),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: KSizes.sm,
                  ),
                  CustomSectionHeading(
                    textColor: AppColores.black,
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
                            Get.to(() => const ProductDetailScreen());
                          },
                          child: CustomProductCardVertical(
                            imagePath: AppImages.shoes3,
                            discount: '25',
                            productName: 'Green Nike Air Shoes',
                            brandName: 'Nike',
                            price: '300',
                            addToCart: () {
                              EasyLoading.showSuccess(
                                "Add To Cart",
                              );
                            },
                            addToLove: () {
                              EasyLoading.showSuccess("Add To Favorite");
                            },
                          ));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
