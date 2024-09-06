
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';

class TFullScreenLoader{

  static void openLoaderDialog(String? text ,BuildContext context){
    showDialog(context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_)=> PopScope(child: Container(
          color: AppColores.white,
          width: double.infinity,
          height: double.infinity,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(text!,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: 20,),
              const CircularProgressIndicator()
            ],
          ),
        )));



  }


  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }



}