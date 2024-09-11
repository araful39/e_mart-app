import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';

class ProductDetailController extends GetxController {


  RxInt imageIndex = 0.obs;


  changeSliderImages(int sliderImagesIndex) {
    imageIndex.value = sliderImagesIndex;
  }

  RxInt productCount = 1.obs;
  void decrement() {
    if (productCount > 1) {
      productCount--;
    } else {}
  }

  void increment() {
    if (productCount >= 5) {
    } else {
      productCount++;
    }
  }
}
