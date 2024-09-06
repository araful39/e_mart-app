import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';

class ProductDetailController extends GetxController {
  RxList imagesList = [
    AppImages.shoes1,
    AppImages.shoes2,
    AppImages.shoes3,
    AppImages.shoes4,
    AppImages.shoes5,
    AppImages.shoes6,
    AppImages.shoes7
  ].obs;

  RxInt imageIndex = 0.obs;

  String sliderImages() {
    if (imageIndex.value == 0) {
      return imagesList[0].toString();
    } else if (imageIndex.value == 1) {
      return imagesList[1].toString();
    } else if (imageIndex.value == 2) {
      return imagesList[2].toString();
    } else if (imageIndex.value == 3) {
      return imagesList[3].toString();
    } else if (imageIndex.value == 4) {
      return imagesList[4].toString();
    } else if (imageIndex.value == 5) {
      return imagesList[5].toString();
    } else if (imageIndex.value == 6) {
      return imagesList[6].toString();
    } else {
      return imagesList[7].toString();
    }
  }

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
