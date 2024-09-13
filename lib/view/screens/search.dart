import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/home_controller.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/search_controller.dart';
import 'package:morder_ecommerce_app/damy_data/product_list.dart';
import 'package:morder_ecommerce_app/model/product_model.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/layout/grid_layout.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:morder_ecommerce_app/view/common/widgets/text_form/text_form_feild.dart';
import 'package:morder_ecommerce_app/view/screens/product_details/product_detail.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // String searchQuery = '';
  // List<ProductModel> searchProducts(String query) {
  //   return allProductList.where((product) {
  //     final nameLower = product.name.toLowerCase();
  //     final brandLower = product.brand.toLowerCase();
  //     final searchLower = query.toLowerCase();
  //
  //     return nameLower.contains(searchLower) || brandLower.contains(searchLower);
  //   }).toList();
  // }
  TextEditingController searchC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    SearchScreenController searchController = Get.put(SearchScreenController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomPrimaryHeaderContainer(
                headerHeight: 130,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: KSizes.md),
                    child: CustomTextFormField(
                      onChanged: (value) {
                        searchController.searchProducts(value);
                      },
                      suffixWidget: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                      hintText: "Search",
                      controller: searchC,
                    ),
                  ),
                )),
            Expanded(
              child: Obx(() => searchController.searchResults.isNotEmpty
                  ? CustomGridLayout(
                      physics: ScrollPhysics(),
                      itemCount: searchController.searchResults.length,
                      itemBuilder: (_, index) {
                        var product = searchController.searchResults[index];
                        return GestureDetector(
                          onTap: () {
                            Get.to(() => ProductDetailScreen(
                                  productId: product.id,
                                  productName: product.name,
                                  regularPrice: product.regularPrice,
                                  discountPrice: product.discountPrice,
                                  status: product.status,
                                  brandName: product.brand,
                                  ratings: product.ratings,
                                  totalRatings: product.totalRatings,
                                  colors: product.colors,
                                  sizes: product.sizes,
                                  images: product.images,
                                  description: product.description,
                                ));
                          },
                          child: Obx(
                            () {
                              bool isInWishList = homeController
                                  .wishListController.wishList
                                  .any((item) => item.id == product.id);

                              return CustomProductCardVertical(
                                imagePath: product.images[0],
                                discount: product.discountPrice.toString(),
                                productName: product.name,
                                brandName: product.brand,
                                price: product.regularPrice.toString(),
                                addToCart: () async {
                                  await homeController.addToCart(product);
                                },
                                addToLove: () async {
                                  await homeController.addToWishList(product);
                                },
                                isNetworkImage: true,
                                favoriteColor:
                                    isInWishList ? Colors.red : Colors.grey,
                              );
                            },
                          ),
                        );
                      },
                    )
                  : Text("No Product")),
            )
          ],
        ),
      ),
    );
  }
}
