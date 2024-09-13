import 'package:get/get.dart';
import 'package:morder_ecommerce_app/damy_data/product_list.dart';
import 'package:morder_ecommerce_app/model/product_model.dart';

class SearchScreenController extends GetxController {
  // RxString searchQuery = ''.obs;
  var searchResults = <ProductModel>[].obs;

  void searchProducts(String query) {
    if (query.isEmpty) {
      searchResults.value =
          allProductList; // Show all products if query is empty
    } else {
      searchResults.value = allProductList.where((product) {
        final nameLower = product.name.toLowerCase();
        final brandLower = product.brand.toLowerCase();
        final searchLower = query.toLowerCase();

        return nameLower.contains(searchLower) ||
            brandLower.contains(searchLower);
      }).toList();
    }
  }

  @override
  void onInit() {
    super.onInit();
    searchResults.value = allProductList;
  }
}
