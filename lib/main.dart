import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:morder_ecommerce_app/view/bottom_navigation_menu.dart';
import 'package:morder_ecommerce_app/view/screens/Wishlist/wishlist.dart';
import 'package:morder_ecommerce_app/view/screens/home/home.dart';
import 'package:morder_ecommerce_app/view/screens/settings/settings.dart';
import 'package:morder_ecommerce_app/view/screens/shop/store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        title: 'e-Mart ',
        themeMode: ThemeMode.light,
        home: SettingsScreen());
  }
}
