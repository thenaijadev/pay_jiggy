import 'package:flutter/cupertino.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';

class AdvertCard extends StatelessWidget {
  const AdvertCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.orange)),
    );
  }
}
