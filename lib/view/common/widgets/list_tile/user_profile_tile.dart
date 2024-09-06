import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/image_strings.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/circular_image_with_clipOval.dart';

class RUserProfileTile extends StatelessWidget {
  const RUserProfileTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPress,
    required this.icon,
  });
  final String title;
  final String subTitle;
  final VoidCallback onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CustomCircularImageWithClipOval(
        height: 50,
        width: 50,
        isNetworkImage: false,
        imagePath: AppImages.profile,
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
