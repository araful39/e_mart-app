import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/rating/rating_bar_indicator.dart';
import 'package:morder_ecommerce_app/view/screens/product_review_and_rating/widget/over_all_ratings.dart';
import 'package:morder_ecommerce_app/view/screens/product_review_and_rating/widget/user_review_card.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Reviews & Ratings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.cardRadiusLg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Product Ratings are shown in ads and free product listings, appearing as 1 to 5-star ratings that also display the total number of reviews for the product."),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              const CustomOverAllRatings(),
              const CustomRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              const CustomUserReviewCard(
                imagePath: AppImages.profile,
                isNetworkImage: false,
                name: "Raju Islam",
              ),
              const CustomUserReviewCard(
                imagePath: AppImages.profile,
                isNetworkImage: false,
                name: "Raju Islam",
              ),
              const CustomUserReviewCard(
                imagePath: AppImages.profile,
                isNetworkImage: false,
                name: "Raju Islam",
              ),
              const CustomUserReviewCard(
                imagePath: AppImages.profile,
                isNetworkImage: false,
                name: "Raju Islam",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
