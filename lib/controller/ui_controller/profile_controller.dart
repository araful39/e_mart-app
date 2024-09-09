import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/settings_controller.dart';

class ProfileController extends GetxController {
  final ImagePicker picker = ImagePicker();
  final RxString selectedImage = ''.obs;
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> selectImage(ImageSource source) async {
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      selectedImage.value = pickedImage.path;
      await storage.write(key: "pickedImage", value: selectedImage.value);
      selectedImage.value = (await storage.read(key: "pickedImage"))!;
      var a = Get.put(SettingsController());
      a.getImage();
    }
  }

  Future<void> getData() async {
    String? storedImage = await storage.read(key: "pickedImage");
    if (storedImage != null) {
      selectedImage.value = storedImage;
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
