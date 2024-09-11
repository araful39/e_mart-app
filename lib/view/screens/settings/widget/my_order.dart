import 'package:flutter/material.dart';

class MyOrdersScreen extends StatelessWidget {
  final List<Order> orders = [
    Order(
      orderId: 'ORD123456',
      items: ['T-Shirt', 'Jeans', 'Sneakers'],
      status: 'Delivered',
      orderDate: DateTime(2023, 10, 01),
    ),
    Order(
      orderId: 'ORD123457',
      items: ['Watch', 'Sunglasses'],
      status: 'Pending',
      orderDate: DateTime(2023, 10, 03),
    ),
    Order(
      orderId: 'ORD123458',
      items: ['Backpack', 'Notebook'],
      status: 'Cancelled',
      orderDate: DateTime(2023, 10, 05),
    ),
    Order(
      orderId: 'ORD123459',
      items: ['Books', 'Pens'],
      status: 'Shipped',
      orderDate: DateTime(2023, 10, 06),
    ),
  ];

   MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 4,
            child: ListTile(
              title: Text('Order ID: ${order.orderId}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Items: ${order.items.join(', ')}'),
                  Text('Order Date: ${order.orderDate.toLocal()}'.split(' ')[0]),
                ],
              ),
              trailing: Chip(
                label: Text(
                  order.status,
                  style: TextStyle(
                    color: order.status == 'Delivered'
                        ? Colors.green
                        : order.status == 'Pending'
                        ? Colors.orange
                        : Colors.red,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}

class Order {
  final String orderId;
  final List<String> items;
  final String status;
  final DateTime orderDate;

  Order({
    required this.orderId,
    required this.items,
    required this.status,
    required this.orderDate,
  });
}