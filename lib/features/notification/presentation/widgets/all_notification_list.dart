import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/notification_card.dart';

class AllNotificationsList extends StatelessWidget {
  const AllNotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ListView(
        children: const [
          NotificationCard(
            isRead: true,
          ),
          NotificationCard(
            isRead: false,
          )
        ],
      ),
    );
  }
}
