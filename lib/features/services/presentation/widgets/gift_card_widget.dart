import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class GiftCardWidget extends StatelessWidget {
  const GiftCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            const SizedBox(width: 70),
            Image.asset('assets/images/dotted_vertical_line.png'),
            const SizedBox(width: 20),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: '55% Off',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  text: 'Airbnb',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 30),
                TextWidget(
                  text: 'Valid until 01 February 2022',
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: AppColors.inputGrey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
