import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/profile_head_widget.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/notification_widget.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: const UserWidget(
            image: "assets/images/profile.png",
            name: 'Alexander',
          ),
        ),
        const NotificationWidget()
      ],
    );
  }
}
