import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class SpeedDialItem<T> extends StatelessWidget {
  const SpeedDialItem({
    super.key,
    required this.icon,
    required this.label,
    this.iconColor = Colors.white,
    this.backgroundColor = AppColors.orange,
  });
  final T icon;
  final String label;
  final Color backgroundColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    final isIconData = icon is IconData;
    final isString = icon is String;

    return Container(
      width: 80,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isIconData) Icon(icon as IconData, color: iconColor),
            if (isString)
              Image.asset(
                "assets/images/more.png",
                width: 25,
              ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
              text: label,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: const Color(0xff100D40),
            )
          ],
        ),
      ),
    );
  }
}
