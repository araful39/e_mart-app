import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController{
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  RxBool isClick=false.obs;
  RxString selectedImage = ''.obs;
  onChangeSafeMode(value){
    isClick.value=value;
  }

  getImage()async{
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

