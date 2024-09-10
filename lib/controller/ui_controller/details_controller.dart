import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  RxString selectedColor = 'Red'.obs;
  RxInt sizes = 0.obs;
  RxInt colors = 0.obs;

  Color getColorByName(colorName) {
    switch (colorName) {
      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Black':
        return Colors.black;
      case 'White':
        return Colors.white;
      case 'Green':
        return Colors.green;
      case 'Yellow':
        return Colors.yellow;
      default:
        return Colors.transparent;
    }
  }
}
