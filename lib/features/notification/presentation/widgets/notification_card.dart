import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/read_messages.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/unread_messages_widget.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.isRead});
  final bool isRead;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 01),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          if (isRead) const UnreadMassageWidget(),
          if (!isRead) const ReadMessageWidget(),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(text: "You have received"),
              SizedBox(
                height: 20,
              ),
              TextWidget(
                text: "11.00 AM",
                color: Color(0xff999999),
              ),
            ],
          )
        ],
      ),
    );
  }
}
