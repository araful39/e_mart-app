import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/settings_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/address/address.dart';
import 'package:morder_ecommerce_app/view/screens/cart/cart.dart';
import 'package:morder_ecommerce_app/view/screens/login/login.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomPrimaryHeaderContainer(
                headerHeight: 200,
                topHeight: 140,
                child: Column(
                  children: [
                    CustomAppBar(
                      title: Text(
                        "Account",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.apply(color: AppColores.white),
                      ),
                    ),
                    // UserProfileTile(
                    //   title: 'Raju',
                    //   subTitle: 'rajuslam39@gmail.com',
                    //   onPress: ()
                    //   {
                    //     Get.to(()=>const Profile());
                    //   },
                    //   icon: Icons.edit,
                    // )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(KSizes.defaultBtwSections),
              child: Column(
                children: [
                  const CustomSectionHeading(name: "Account Settings"),
                  CustomSettingsMenuTile(
                    title: 'My Address',
                    subTitle: 'Get shopping delivery address',
                    icon: Icons.person,
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  CustomSettingsMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    icon: Icons.person,
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  const CustomSettingsMenuTile(
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    icon: Icons.person,
                  ),
                  const CustomSettingsMenuTile(
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank ',
                    icon: Icons.person,
                  ),
                  const CustomSettingsMenuTile(
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    icon: Icons.person,
                  ),
                  const CustomSettingsMenuTile(
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                    icon: Icons.person,
                  ),
                  const CustomSettingsMenuTile(
                    title: 'Account Privacy',
                    subTitle: 'Manage data use and connect',
                    icon: Icons.person,
                  ),
                  const SizedBox(
                    height: KSizes.defaultBtwSections,
                  ),
                  const CustomSectionHeading(name: "App Settings"),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  const CustomSettingsMenuTile(
                    title: 'Load Data',
                    subTitle: 'Get shopping delivery address',
                    icon: Icons.upload,
                  ),
                  CustomSettingsMenuTile(
                    title: 'Location',
                    subTitle: 'Set recommendation',
                    icon: Icons.location_on_outlined,
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  CustomSettingsMenuTile(
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    icon: Icons.safety_check,
                    trailing: Obx(
                      () => Switch(
                        value: settingsController.isClick.value,
                        onChanged: (value) {
                          settingsController.onChangeSafeMode(value);
                        },
                      ),
                    ),
                  ),
                  const CustomSettingsMenuTile(
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    icon: Icons.image,
                  ),
                  const SizedBox(
                    height: KSizes.defaultBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () async {
                          Get.offAll(const LoginScreen());
                        },
                        child: const Text("LogOut")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
