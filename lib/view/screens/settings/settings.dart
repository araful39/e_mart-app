import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/settings_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/utills/constants/texts.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/account_privacy.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/my_coupons.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/my_order.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/my_orders.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/notification.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/privacy_policy.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/terms_and_conditions.dart';
import 'package:morder_ecommerce_app/view/screens/settings/widget/user_profile_tile.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/address/address.dart';
import 'package:morder_ecommerce_app/view/screens/cart/cart.dart';
import 'package:morder_ecommerce_app/view/screens/profile/profile.dart';
import 'package:morder_ecommerce_app/view/screens/signin/signin.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomPrimaryHeaderContainer(
                headerHeight: 200,
                child: Column(children: [
                  const SizedBox(
                    height: KSizes.md,
                  ),
                  const Text(
                    "Account",
                    style: TextStyle(
                        color: AppColores.white,
                        fontSize: KSizes.fontSizeXl,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: KSizes.md,
                  ),
                  Obx(
                    () => RUserProfileTile(
                      title: 'Raju',
                      subTitle: 'rajuslam39@gmail.com',
                      onPress: () {
                        Get.to(() => const Profile());
                      },
                      icon: Icons.edit,
                      imagePath: settingsController.selectedImage.value,
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(KSizes.defaultBtwSections),
                child: Column(
                  children: [
                    const CustomSectionHeading(
                      name: "Account Settings",
                      textColor: AppColores.black,
                    ),
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
                    CustomSettingsMenuTile(
                      onTap: () {
                        Get.to(() => MyOrdersScreen());
                      },
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders',
                      icon: Icons.person,
                    ),
                    CustomSettingsMenuTile(
                      onTap: () {
                        Get.to(() => MyCouponsScreen());
                      },
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons',
                      icon: Icons.person,
                    ),
                    CustomSettingsMenuTile(
                      onTap: () {
                        Get.to(() => const NotificationScreen());
                      },
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message',
                      icon: Icons.person,
                    ),
                    CustomSettingsMenuTile(
                      onTap: () {
                        Get.to(() => const PrivacyScreen());
                      },
                      title: 'Account Privacy',
                      subTitle: 'Manage data use and connect',
                      icon: Icons.person,
                    ),
                    CustomSettingsMenuTile(
                      onTap: () {
                        Get.to(() => const PrivacyPolicyScreen());
                      },
                      title: 'Privacy Policy',
                      subTitle: 'View our privacy policy. ',
                      icon: Icons.person,
                    ),
                    CustomSettingsMenuTile(
                      onTap: () {
                        Get.to(() => const TermsAndConditionsScreen());
                      },
                      title: 'Terms and Conditions',
                      subTitle: 'View our terms and conditions. ',
                      icon: Icons.person,
                    ),
                    const SizedBox(
                      height: KSizes.defaultBtwSections,
                    ),
                    const CustomSectionHeading(name: "App Settings"),
                    const SizedBox(
                      height: KSizes.spaceBtwItems,
                    ),
                    CustomSettingsMenuTile(
                      title: 'Location',
                      subTitle: 'Set recommendation',
                      icon: Icons.location_on_outlined,
                      trailing: Obx(
                        () => Switch(
                          value: settingsController.isLocation.value,
                          onChanged: (values) {
                            settingsController.isLocation.value = values;
                          },
                        ),
                      ),
                    ),
                    CustomSettingsMenuTile(
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                      icon: Icons.safety_check,
                      trailing: Obx(
                        () => Switch(
                          value: settingsController.isSafaMode.value,
                          onChanged: (value) {
                            settingsController.isSafaMode.value = value;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: KSizes.defaultBtwSections,
                    ),
                    CustomElevatedButton(
                        name: "Log Out",
                        onPressed: () {
                          EasyLoading.showSuccess("LogOut Success");
                          Get.offAll(const SignInScreen());
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
