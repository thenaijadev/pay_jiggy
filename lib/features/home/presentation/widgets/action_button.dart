import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ActionButtonOrange extends StatelessWidget {
  const ActionButtonOrange(
      {super.key,
      required this.onTap,
      this.label = "Order",
      this.backgroundColor = AppColors.orange});
  final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: const Size(double.infinity, 50)),
      child: TextWidget(
        text: label,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
