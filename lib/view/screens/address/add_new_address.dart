
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/button/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/text_form/text_form_feild.dart';
class CustomAddNewAddress extends StatelessWidget {
  const CustomAddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomTextFormField(labelName: 'Name',),
            const CustomTextFormField(iconData: Icons.phone, labelName: 'Phone Number',),
            const Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomTextFormField(

                      iconData: Icons.streetview, labelName: 'Street',
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CustomTextFormField(
                      iconData: Icons.post_add, labelName: 'Postal Code',
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomTextFormField(

                      iconData: Icons.location_city, labelName: 'City',
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CustomTextFormField(
                      iconData: Icons.real_estate_agent, labelName: 'State',
                    ),
                  ),
                ),
              ],
            ),
            const CustomTextFormField(labelName: "Country",iconData: Icons.blur_circular,),
            CustomElevatedButton(name: "Save", onPressed: ()=> Get.back())

          ],
        ),
      ),
    );
  }
}
