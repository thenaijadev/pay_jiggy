import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ActionButtonOrange extends StatelessWidget {
  const ActionButtonOrange(
      {super.key, required this.onTap, this.label = "Order"});
  final VoidCallback onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orange,
          minimumSize: const Size(double.infinity, 50)),
      child: TextWidget(
        text: label,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
