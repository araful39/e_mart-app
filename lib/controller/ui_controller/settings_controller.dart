import 'package:get/get.dart';

class SettingsController extends GetxController{
  RxBool isClick=false.obs;

  onChangeSafeMode(value){
    isClick.value=value;
  }


}

