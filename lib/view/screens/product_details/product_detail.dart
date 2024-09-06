import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/button/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_attributes.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_details_images_slider.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_meta_data.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/widget/product_rating_and_share.dart';
import 'package:morder_ecommerce_app/view/screens/product_review_and_rating/product_review_and_rating.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: KSizes.defaultSpace,
                  right: KSizes.defaultSpace,
                  bottom: KSizes.defaultSpace),
              child: Column(
                children: [
                  const CustomRatingAndShare(),
                  const CustomProductMetaData(),
                  const CustomProductAttributes(),
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
                  const CustomSectionHeading(name: "Description"),
                  // const CustomReadMoreText(
                  //   "You can use shape property of the Chip widget. In that property you can pass RoundedRectangleBorder() and mention borderRadius inside of the RoundedRectangleBorder(). There are other ShapeBorders like BeveledRectangleBorder(), StadiumBorder(),OutlineInputBorder(),ContinuousRectangleBorder() and so on.You can use shape property of the Chip widget. In that property you   can pass RoundedRectangleBorder() and mention borderRadius inside of the RoundedRectangleBorder(). There are other ShapeBorders like BeveledRectangleBorder(), S    tadiumBorder(),OutlineInputBorder(),ContinuousRectangleBorder() and so on.",
                  //   trimLength: 100,
                  //   colorClickableText: Colors.indigo,
                  //   trimCollapsedText: "Show more",
                  //   moreStyle: TextStyle(color: Colors.indigo),
                  //   trimExpandedText: "Show less",
                  //   lessStyle: TextStyle(color: Colors.indigo),
                  // ),
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
                    buttonColor: Colors.indigo,
                    subText: "view now",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
