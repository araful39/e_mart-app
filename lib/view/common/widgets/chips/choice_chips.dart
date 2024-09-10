// import 'package:morder_ecommerce_app/utills/constants/colors.dart';
// import 'package:morder_ecommerce_app/utills/helpers/helpers.dart';
//
//
// import 'package:flutter/material.dart';
// import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/circular_container.dart';
//
// class CustomChoiceChip extends StatelessWidget {
//   const CustomChoiceChip({
//     super.key,
//     required this.text,
//     required this.selected,
//     this.onSelected,
//
//   });
//
//   final String text;
//   final bool selected;
//   final void Function(bool)? onSelected;
//
//   @override
//   Widget build(BuildContext context) {
//     final isColor=AppHelperFunctions.getColor(text) != null;
//     return ChoiceChip(
//
//       label: isColor
//         ? const SizedBox()
//           :  Text(text),
//       selected: selected,
//       onSelected: onSelected,
//       labelStyle: TextStyle(color: selected ? AppColores.white : null),
//
//
//       avatar: isColor
//           ? CustomCircularContainer(
//               width: 50,
//               height: 50,
//               backgroundColor: AppHelperFunctions.getColor(text)!,
//             )
//           : null,
//       shape:isColor
//           ? const CircleBorder():null,
//       labelPadding:isColor
//           ? const EdgeInsets.all(0) :null,
//       padding:isColor
//           ? const EdgeInsets.all(0):null,
//       backgroundColor:isColor
//           ? Colors.green :Colors.teal,
//     );
//   }
// }
