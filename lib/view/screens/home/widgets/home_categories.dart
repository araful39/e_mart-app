
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/view/common/widgets/vertical_images_text/vertical_image_text.dart';

class CustomHomeCategories extends StatelessWidget {

  const CustomHomeCategories({
    super.key,
  });

  @override

  Widget build(BuildContext context) {

    return Obx(
      (){

        return SizedBox(
          height: 75,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount:15,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {


                return CustomVerticalImageText(
                  text:  "category.name",
                  netImagePath: "",

                );
              }),
        );
      },
    );
  }
}
