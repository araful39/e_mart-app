import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/settings_controller.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Privacy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
            ()=> ListView(
            children: [
              ListTile(
                title: Text('Data Sharing'),
                subtitle: Text('Allow us to share your data with partners.'),
                trailing: Switch(
                  value: settingsController.dataSharing.value,
                  onChanged: (value) {
                    settingsController.dataSharing.value = value;
                  },
                ),
              ),
              ListTile(
                title: Text('Profile Visibility'),
                subtitle: Text('Make your profile visible to other users.'),
                trailing: Switch(
                  value: settingsController.profileVisibility.value,
                  onChanged: (value) {
                    settingsController.profileVisibility.value = value;
                  },
                ),
              ),
              ListTile(
                title: const Text('Notifications'),
                subtitle:
                    const Text('Receive notifications about special offers.'),
                trailing: Switch(
                  value: settingsController.notifications.value,
                  onChanged: (value) {
                    settingsController.notifications.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
