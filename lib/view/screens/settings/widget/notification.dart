import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/damy_data/notification_list.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: const Icon(Icons.notifications),
            title: Text(notification.title, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification.message),
                const SizedBox(height: 4),
                Text(notification.time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
            isThreeLine: true,
            onTap: () {
              // Handle notification tap here
            },
          );
        },
      ),
    );
  }
}