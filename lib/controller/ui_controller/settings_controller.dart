import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  RxBool isLocation = false.obs;
  RxBool isSafaMode = false.obs;
  RxString selectedImage = ''.obs;
  RxBool dataSharing = false.obs;
  RxBool profileVisibility = true.obs;
  RxBool notifications = true.obs;
  // onChangeLocation(value){
  //   isSafaMode.value=value;
  // }
  // onChangeSafeMode(value){
  //   isSafaMode.value=value;
  // }

  getImage() async {
    String? storedImage = await storage.read(key: "pickedImage");
    if (storedImage != null) {
      selectedImage.value = storedImage;
    }
  }

  @override
  void onInit() {
    getImage();
    super.onInit();
  }
}
