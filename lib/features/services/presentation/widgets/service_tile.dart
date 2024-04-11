import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap});
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.orange,
      ),
      child: ListTile(
        onTap: onTap,
        title: Center(
            child: TextWidget(
          text: label,
          fontWeight: FontWeight.bold,
        )),
        leading: Icon(icon),
        trailing: const Icon(
          CupertinoIcons.forward,
          color: Color(0xff100D40),
        ),
      ),
    );
  }
}
