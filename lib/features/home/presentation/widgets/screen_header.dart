import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/profile_head_widget.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/notification_widget.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserWidget(
          image: "assets/images/profile.png",
          name: 'Alexander',
        ),
        NotificationWidget()
      ],
    );
  }
}
