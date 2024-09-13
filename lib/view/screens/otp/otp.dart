import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:morder_ecommerce_app/controller/ui_controller/verify_controller.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/view/common/widgets/elevated_button.dart';
import 'package:morder_ecommerce_app/view/screens/bottom_navigation_bar/bottom_navigation_menu.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key, required this.verifyOtp});
  final VoidCallback verifyOtp;

  @override
  Widget build(BuildContext context) {
    VerificationController verificationController =
        Get.put(VerificationController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter the 6-digit OTP sent to your mobile number.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: verificationController.otpController,
              maxLength: 6,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'OTP',
                counterText: '',
              ),
            ),
            const SizedBox(height: 20),
            // Verify OTP Button
            CustomElevatedButton(
                backgroundColor: AppColores.primary,
                name: "Verify OTP",
                onPressed: verifyOtp),
          ],
        ),
      ),
    );
  }
}
