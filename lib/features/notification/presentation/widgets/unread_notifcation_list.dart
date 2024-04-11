import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/notification_card.dart';

class UnreadNotificationsList extends StatelessWidget {
  const UnreadNotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ListView(
        children: const [
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
          NotificationCard(
            isRead: false,
          ),
        ],
      ),
    );
  }
}
