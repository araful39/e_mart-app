import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/model/product_model.dart';

class CartController extends GetxController{

  var cartList = <ProductModel>[].obs;

  addToCartList(ProductModel productModel) {
    if (cartList.any((item) => item.id == productModel.id)) {
      EasyLoading.showError("Remove from Cart");
      cartList.removeWhere((item) => item.id == productModel.id);
    } else {
      EasyLoading.showSuccess("Add To Cart");
      cartList.add(productModel);
    }
  }
  double calculateTotalPrice() {
    return cartList.fold(0.0, (sum, item) => sum + item.discountPrice);

  }



}