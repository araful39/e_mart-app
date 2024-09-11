import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/bottom_navigation_controller.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});
  Future<bool> onWillPop() async {
    bool? shouldExit = await Get.defaultDialog<bool>(
      title: "Exit",
      middleText: "Do you want to exit the app?",
      textCancel: "No",
      textConfirm: "Yes",
      onConfirm: () {
        Get.back(result: true);
      },
      onCancel: () {
        Get.back(result: false);
      },
    );
    return shouldExit ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());

    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
          bottomNavigationBar: Obx(
            () => NavigationBar(
              animationDuration: const Duration(
                seconds: 1,
              ),
              height: 60,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (i) => controller.selectedIndex.value = i,
              indicatorColor: Colors.orange,
              surfaceTintColor: Colors.pinkAccent,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.heart), label: "Wishlist"),
                NavigationDestination(
                    icon: Icon(CupertinoIcons.profile_circled),
                    label: "Profile"),
              ],
            ),
          ),
          body: SafeArea(
              child: Obx(
                  () => controller.screen[controller.selectedIndex.value]))),
    );
  }
}
