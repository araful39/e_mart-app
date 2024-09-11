import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/address_controller.dart';
import 'package:morder_ecommerce_app/damy_data/contract_list.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/screens/address/widget/user_adresses.dart';

import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AddressController addressController = Get.put(AddressController());
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Addresses"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView.builder(
            itemCount: contactsList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  addressController.initialIndex.value = index;
                },
                child: Obx(
                  () => CustomUserAddress(
                    name: contactsList[index].name,
                    phoneNumber: contactsList[index].phoneNumber,
                    address: contactsList[index].address,
                    country: contactsList[index].country,
                    showIcon: index == addressController.initialIndex.value
                        ? true
                        : false,
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColores.primary,
        onPressed: () => Get.to(() => const CustomAddNewAddress()),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
