import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/screens/onboard/onboard_one.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    nextPage();
  }

  void nextPage() async {
    await Future.delayed(const Duration(seconds: 1));

    Get.offAll(const OnboardOne());
  }
}
