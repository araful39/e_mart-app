
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/screens/Wishlist/wishlist.dart';
import 'package:morder_ecommerce_app/view/screens/home/home.dart';
import 'package:morder_ecommerce_app/view/screens/settings/settings.dart';
import 'package:morder_ecommerce_app/view/screens/shop/store.dart';


class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            animationDuration: const Duration(seconds: 1,),
            height: 60,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            // backgroundColor: TColores.success,
            onDestinationSelected: (i) =>
                controller.selectedIndex.value = i,
            indicatorColor: Colors.orange,
            surfaceTintColor: Colors.pinkAccent,
labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.heart), label: "Wishlist"),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
            ],
          ),
        ),
        body: SafeArea(
            child:
                Obx(() => controller.screen[controller.selectedIndex.value])));
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screen = [
   const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const SettingsScreen()
  ];
}
