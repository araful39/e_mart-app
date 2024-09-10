import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/button/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/r_text_description.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_attributes.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_details_images_slider.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_meta_data.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_rating_and_share.dart';
import 'package:morder_ecommerce_app/view/screens/product_review_and_rating/product_review_and_rating.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen(
      {super.key,
      required this.productId,
      required this.productName,
      required this.regularPrice,
      required this.discountPrice,
      required this.status,
      required this.brandName,
      required this.ratings,
      required this.totalRatings,
      required this.colors,
      required this.sizes,
      required this.images,
      required this.description});
  final String productId;
  final String productName;
  final double regularPrice;
  final double discountPrice;
  final String status;
  final String brandName;
  final double ratings;
  final int totalRatings;
  final List<String> colors;
  final List<String> sizes;
  final List images;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomAddToCart(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomProductImageSlider(
                imageList: images,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: KSizes.defaultSpace,
                    right: KSizes.defaultSpace,
                    bottom: KSizes.defaultSpace),
                child: Column(
                  children: [
                    CustomRatingAndShare(
                      ratings: ratings,
                      totalRatings: totalRatings,
                    ),
                    CustomProductMetaData(
                      discountPrice: discountPrice,
                      regularPrice: regularPrice,
                      productName: productName,
                      status: status,
                      brandName: brandName,
                    ),
                    CustomProductAttributes(
                      sizes: sizes,
                      colors: colors,
                    ),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    CustomElevatedButton(
                      name: 'Cheat Out',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    const CustomSectionHeading(
                      name: "Description",
                      textColor: AppColores.black,
                    ),
                    CustomReadMoreText(text: description),
                    const SizedBox(
                      height: KSizes.sm,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: KSizes.defaultSpace,
                    ),
                    CustomSectionHeading(
                      name: "Reviews(199)",
                      onpress: () {
                        Get.to(() => const ProductReviewScreen());
                      },
                      showActionButton: true,
                      buttonColor: AppColores.primary,
                      subText: "view",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
