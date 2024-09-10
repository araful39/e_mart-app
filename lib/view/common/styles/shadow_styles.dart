
import 'package:flutter/cupertino.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

class AppShadowStyle{
  static final verticalProductShadow=BoxShadow(
    color:AppColores. white.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,offset: const Offset(0,2)
  );

  static final horizontalProductShadow=BoxShadow(
    color:AppColores. white.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,offset: const Offset(0,2)
  );


}