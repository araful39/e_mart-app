import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/wish_list_controller.dart';
import 'package:morder_ecommerce_app/model/product_model.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

import 'cart_controller.dart';

class HomeController extends GetxController {
  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  RxList carouselSlides = [
    'https://github.com/user-attachments/assets/c16d0cee-44f1-49d0-b7ca-cdb0488f8bf6',
    'https://github.com/user-attachments/assets/766b2e66-d8f5-4fc7-bf8e-5d7a4bdd7561',
    'https://github.com/user-attachments/assets/0343e319-3d21-4afb-a569-8ee303650ce9',
    'https://github.com/user-attachments/assets/bc3f32b8-a6b9-48d5-9e1d-6b3e1c8fe3a4',
    'https://github.com/user-attachments/assets/b7fb2904-36f8-4b3a-9f89-646cea9db394',
  ].obs;
  var wishListController = Get.put(WishListController());
  var cartListController = Get.put(CartController());
  addToCart(ProductModel product){
    cartListController.addToCartList(product);
  }
  addToWishList(ProductModel product){
    wishListController.addToWishList(product);
  }
  // favoriteColor(int index) {
  //   if (a.wishList.contains(index)) {
  //     return AppColores.red;
  //   }
  // }
}
