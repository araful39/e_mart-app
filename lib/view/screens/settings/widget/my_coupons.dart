import 'package:flutter/material.dart';

class MyCouponsScreen extends StatelessWidget {
  final List<Coupon> coupons = [
    Coupon(
        code: 'SAVE20',
        description: 'Save 20% on your next purchase.',
        expirationDate: '2024-06-30',
        isActive: true),
    Coupon(
        code: 'FREE SHIPPING',
        description: 'Free shipping on orders over \$50.',
        expirationDate: '2024-05-15',
        isActive: true),
    Coupon(
        code: 'WELCOME10',
        description: 'Get 10% off your first order.',
        expirationDate: '2024-04-01',
        isActive: false),
    Coupon(
        code: 'SPRINGSALE',
        description: '25% off for Spring Sale, valid for a limited time!',
        expirationDate: '2024-03-15',
        isActive: true),
  ];

  MyCouponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coupons'),
      ),
      body: ListView.builder(
        itemCount: coupons.length,
        itemBuilder: (context, index) {
          final coupon = coupons[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 4,
            child: ListTile(
              title: Text(coupon.code,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(coupon.description),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Expires: ${coupon.expirationDate}'),
                  const SizedBox(height: 4),
                  Text(
                    coupon.isActive ? 'Active' : 'Expired',
                    style: TextStyle(
                      color: coupon.isActive ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Coupon {
  final String code;
  final String description;
  final String expirationDate;
  final bool isActive;

  Coupon({
    required this.code,
    required this.description,
    required this.expirationDate,
    required this.isActive,
  });
}
