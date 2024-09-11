import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/screens/Wishlist/wishlist.dart';
import 'package:morder_ecommerce_app/view/screens/home/home.dart';
import 'package:morder_ecommerce_app/view/screens/settings/settings.dart';
import 'package:morder_ecommerce_app/view/screens/shop/store.dart';

class BottomNavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screen = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const SettingsScreen()
  ];
}