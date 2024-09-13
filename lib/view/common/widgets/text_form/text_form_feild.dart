import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.prefixIcon,
      this.labelName,
      required this.controller,
      this.hintText, this.suffixWidget, this.onChanged,
      });
  final IconData? prefixIcon;
  final Widget? suffixWidget;
  final String? labelName;
  final TextEditingController controller;
  final String? hintText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        maxLines: 1,
        onChanged: onChanged,
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            filled: true,
            fillColor: AppColores.white,
            labelText: labelName,
            hintText: hintText,
            suffixIcon: suffixWidget,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
      ),
    );
  }
}
