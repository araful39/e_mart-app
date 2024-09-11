import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms and Conditions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Last updated: January 1, 2023\n\n'
                  'Welcome to our e-commerce application! These terms and conditions outline the rules and regulations for using our website and services.\n\n'
                  '1. **Acceptance of Terms**\n'
                  'By accessing or using our services, you agree to be bound by these terms and conditions. If you do not agree, please do not use our services.\n\n'
                  '2. **Account Creation**\n'
                  'To use certain features of our services, you may be required to create an account. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete.\n\n'
                  '3. **User Responsibilities**\n'
                  'You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree to notify us immediately of any unauthorized use of your account.\n\n'
                  '4. **Intellectual Property**\n'
                  'The content and materials on our services are protected by intellectual property laws. You may not reproduce, distribute, or create derivative works from any content on our services without our express consent.\n\n'
                  '5. **Limitation of Liability**\n'
                  'We will not be liable for any indirect, incidental, special, or consequential damages that result from your use of our services. This includes, but is not limited to, damages for loss of profits, goodwill, or data.\n\n'
                  '6. **Changes to Terms**\n'
                  'We may update these terms and conditions from time to time. We will notify you about significant changes in the way we treat personal information by sending a notice to the primary email address specified in your account or by placing a prominent notice on our site.\n\n'
                  '7. **Governing Law**\n'
                  'These terms and conditions will be governed by and construed in accordance with the laws of [Your Country]. Any disputes relating to these terms shall be subject to the exclusive jurisdiction of the courts of [Your Country].\n\n'
                  'By using our services, you acknowledge that you have read and understood these terms and conditions and agree to be bound by them.\n\n',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}