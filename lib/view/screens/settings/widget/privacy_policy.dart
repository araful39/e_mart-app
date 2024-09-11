
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Last updated: January 1, 2023\n\n'
                  'Your privacy is important to us. This privacy policy explains how we collect, use, and share your information when you use our services.\n\n'
                  '1. **Information We Collect**\n'
                  'We collect information that you provide directly to us, such as when you create an account, make a purchase, or contact customer support. This information may include your name, email address, phone number, and payment information.\n\n'
                  '2. **How We Use Your Information**\n'
                  'We use the information we collect to:\n'
                  '- Provide, maintain, and improve our services\n'
                  '- Process transactions and send you related information\n'
                  '- Communicate with you about products, services, offers, and promotions\n'
                  '- Monitor and analyze trends, usage, and activities in connection with our services\n\n'
                  '3. **Information Sharing**\n'
                  'We may share your information with:\n'
                  '- Service providers who help us with our operations\n'
                  '- Business partners for joint marketing purposes\n'
                  '- Law enforcement or other third parties if required by law\n\n'
                  '4. **Security**\n'
                  'We take reasonable measures to help protect the information you provide to us from loss, theft, misuse, and unauthorized access or disclosure.\n\n'
                  '5. **Your Choices**\n'
                  'You can review and update your account information at any time. You may also contact us to request the deletion of your personal information.\n\n'
                  '6. **Changes to This Privacy Policy**\n'
                  'We may update our privacy policy from time to time. We will notify you of any changes by posting the new policy on this page.\n\n'
                  'By using our services, you agree to the collection and use of information in accordance with this policy.\n\n',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }  }