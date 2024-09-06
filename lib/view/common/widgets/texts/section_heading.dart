
import 'package:flutter/material.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    required this.name,
    this.onpress,
    this.subText,
    this.showActionButton = false,
    this.textColor, this.buttonColor,
  });
  final String name;
  final Color? textColor;
  final Color? buttonColor;
  final String? subText;
  final bool showActionButton;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor ?? Colors.grey),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
              onPressed: onpress,
              child: Text(
                subText ?? "view ",
                style: Theme.of(context).textTheme.bodySmall!.apply(color: buttonColor ?? Colors.black),
              )),
      ],
    );
  }
}