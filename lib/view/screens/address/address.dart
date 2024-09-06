
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/screens/address/widget/user_adresses.dart';

import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Addresses"),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context,index){
          return    const CustomUserAddress(
            name: 'Raju islam',
            phoneNumber: '+880192345678',
            address: 'Mirpur-10,dhaka',
            country: 'Bangladesh', showIcon: true,
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () =>Get.to(()=>const CustomAddNewAddress()),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
