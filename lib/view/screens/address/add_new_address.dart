
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/common/widgets/text_form/text_form_feild.dart';
class CustomAddNewAddress extends StatelessWidget {
  const CustomAddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController phoneNumber=TextEditingController();
    TextEditingController streetController=TextEditingController();
    TextEditingController postCode=TextEditingController();
    TextEditingController cityController=TextEditingController();
    TextEditingController statController=TextEditingController();
    TextEditingController countryController=TextEditingController();
    return   Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             CustomTextFormField(labelName: 'Name', controller: nameController,),
             CustomTextFormField(prefixIcon: Icons.phone, labelName: 'Phone Number', controller: phoneNumber,),
             Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomTextFormField(

                      prefixIcon: Icons.streetview, labelName: 'Street', controller: streetController,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CustomTextFormField(
                      prefixIcon: Icons.post_add, labelName: 'Postal Code', controller: postCode,
                    ),
                  ),
                ),
              ],
            ),
             Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomTextFormField(

                      prefixIcon: Icons.location_city, labelName: 'City', controller: cityController,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: CustomTextFormField(
                      prefixIcon: Icons.real_estate_agent, labelName: 'State', controller: statController,
                    ),
                  ),
                ),
              ],
            ),
             CustomTextFormField(labelName: "Country",prefixIcon: Icons.blur_circular, controller: countryController,),
            CustomElevatedButton(name: "Save", onPressed: (){
              EasyLoading.showSuccess("Save");
             Get.back();
            })

          ],
        ),
      ),
    );
  }
}
