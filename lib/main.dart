import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:morder_ecommerce_app/view/screens/bottom_navigation_bar/bottom_navigation_menu.dart';
import 'package:morder_ecommerce_app/view/screens/search.dart';
import 'package:morder_ecommerce_app/view/screens/splash/splash.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        title: 'modern_ecommerce ',
        themeMode: ThemeMode.light,
        home: const SplashScreen());
  }
}
