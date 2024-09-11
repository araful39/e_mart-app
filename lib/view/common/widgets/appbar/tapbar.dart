import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
class CustomTapBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTapBar({super.key, required this.tabs});
final List<Widget> tabs;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: 50,
        child: TabBar(
          indicatorWeight: 2,
          tabs: tabs,
          isScrollable: true,
          indicatorColor: AppColores.primary,
          labelColor: AppColores.primary,
          unselectedLabelColor: AppColores.darkGery,
        ),
      ),
    ); // Your custom widget implementation.
  }

}