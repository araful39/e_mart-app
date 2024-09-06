import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.iconData, required this.labelName});
final IconData? iconData;
final String labelName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      child: TextFormField(
        maxLines: 1,
        decoration:  InputDecoration(
          prefixIcon: Icon(iconData ??Icons.person),

          label: Text(labelName),
          border: const OutlineInputBorder(

          )

        ),

      ),
    );
  }
}
