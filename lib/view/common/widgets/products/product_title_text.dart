import 'package:flutter/material.dart';

class CustomProductTitleText extends StatelessWidget {
  const CustomProductTitleText({
    super.key,
    required this.title,
 this.smallSize=false,
   this.maxLine,
    this.textAlign,
  });

  final String title;
  final bool smallSize;
  final int? maxLine;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine ?? 3,
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
