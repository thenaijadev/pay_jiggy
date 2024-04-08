import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          "assets/images/notification.png",
          width: 30,
          color: Colors.black,
        ),
        const Positioned(
          left: 13,
          top: 0,
          child: CircleAvatar(
            backgroundColor: AppColors.orange,
            radius: 8,
            child: TextWidget(
              text: "0",
              fontSize: 8,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
