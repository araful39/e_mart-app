import 'package:flutter/material.dart';

class CustomProfileMenu extends StatelessWidget {
  const CustomProfileMenu({
    super.key,
    required this.onTap,
    required this.title,
    required this.value,
    required this.iconData,
  });
  final VoidCallback onTap;
  final String title;
  final String value;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              flex: 2,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          Flexible(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyLarge,
              )),
          Flexible(
              child: Icon(
            iconData,
            size: 15,
          ))
        ],
      ),
    );
  }
}
