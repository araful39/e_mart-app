import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/model/product_model.dart';

class WishListController extends GetxController {
  var wishList = <ProductModel>[].obs;

  addToWishList(ProductModel productModel) {
    if (wishList.any((item) => item.id == productModel.id)) {
      EasyLoading.showError("Remove from Favorite");
      wishList.removeWhere((item) => item.id == productModel.id);
    } else {
      EasyLoading.showSuccess("Add To Favorite");
      wishList.add(productModel);
    }
  }
}
