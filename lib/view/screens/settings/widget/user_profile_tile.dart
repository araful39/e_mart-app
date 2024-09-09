import 'dart:io';

import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/icons.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/circular_image_with_clipOval.dart';

class RUserProfileTile extends StatelessWidget {
  const RUserProfileTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPress,
    required this.icon,
    required this.imagePath,
  });
  final String imagePath;

  final String title;
  final String subTitle;
  final VoidCallback onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: imagePath.isEmpty
          ? Text('No image selected.')
          : ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.file(
                File(imagePath),
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.apply(color: AppColores.white),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.apply(color: AppColores.white),
      ),
      trailing: IconButton(
        onPressed: onPress,
        icon: Icon(
          icon,
          color: AppColores.white,
          size: 30,
        ),
      ),
    );
  }
}
