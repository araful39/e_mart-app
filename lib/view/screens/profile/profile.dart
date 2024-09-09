import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/profile_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/appbar/appbar.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/circular_image_with_clipOval.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:morder_ecommerce_app/view/screens/profile/widget/profile_menu.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      return profileController.selectedImage.isEmpty
                          ? Text('No image selected.')
                          : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                            child: Image.file(
                                File(profileController.selectedImage.value),height: 150,width: 150,fit: BoxFit.cover,),
                          );
                    }),
                    TextButton(
                        onPressed: () {
                          profileController.selectImage(ImageSource.gallery);
                          // Get.bottomSheet(Container(
                          //   height: 100,
                          //   color: AppColores.white,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: [
                          //       IconButton(
                          //           onPressed: () {
                          //             profileController
                          //                 .selectImage(ImageSource.camera);
                          //           },
                          //           icon: const Icon(
                          //             Icons.camera_alt_outlined,
                          //             size: 50,
                          //             color: AppColores.primary,
                          //           )),
                          //       IconButton(
                          //           onPressed: () {
                          //             profileController
                          //                 .selectImage(ImageSource.gallery);
                          //           },
                          //           icon: Icon(Icons.browse_gallery,
                          //               size: 50, color: AppColores.primary)),
                          //     ],
                          //   ),
                          // ));
                        },
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),
              const Divider(),
              const CustomSectionHeading(name: "Profile Information"),
              const SizedBox(
                height: KSizes.sm,
              ),
              CustomProfileMenu(
                onTap: () {},
                title: 'name',
                value: 'Md.Araful islam',
                iconData: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              CustomProfileMenu(
                onTap: () {},
                title: 'Username',
                value: 'raju39',
                iconData: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              const Divider(),
              const SizedBox(
                height: KSizes.sm,
              ),
              const CustomSectionHeading(name: "Personal Information"),
              const SizedBox(
                height: KSizes.sm,
              ),
              CustomProfileMenu(
                onTap: () {},
                title: 'User ID',
                value: '12345',
                iconData: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              CustomProfileMenu(
                onTap: () {},
                title: 'E-mail',
                value: 'rajuslam39@gmail.com',
                iconData: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              CustomProfileMenu(
                onTap: () {},
                title: 'Phone Number',
                value: '+8801928217679',
                iconData: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              CustomProfileMenu(
                onTap: () {},
                title: 'Gender',
                value: 'Male',
                iconData: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
              CustomProfileMenu(
                onTap: () {},
                title: 'Date of Birth',
                value: '15 August 1998',
                iconData: Icons.arrow_forward_ios,
              ),
              const SizedBox(
                height: KSizes.sm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
