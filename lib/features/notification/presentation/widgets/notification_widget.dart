import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget(
      {super.key,
      this.color = Colors.black,
      this.backgroundColor = AppColors.orange,
      this.numberColor = Colors.white});
  final Color color;
  final Color backgroundColor;
  final Color numberColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.notification);
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            "assets/images/notification.png",
            width: 30,
            color: color,
          ),
          Positioned(
            left: 13,
            top: 0,
            child: CircleAvatar(
              backgroundColor: backgroundColor,
              radius: 8,
              child: TextWidget(
                text: "0",
                fontSize: 8,
                fontWeight: FontWeight.w900,
                color: numberColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
