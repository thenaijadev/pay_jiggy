import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ServiceTabHeader extends StatelessWidget {
  const ServiceTabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            TextWidget(
              text: "Services",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              text: "PayJiggy",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.orange,
            ),
            TextWidget(
              text: "Enjoy our amazing services...",
              fontSize: 10,
            ),
            SizedBox(
              height: 10,
            )
          ],
        )
      ],
    );
  }
}
