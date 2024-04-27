import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class AvailableFlightCard extends StatelessWidget {
  const AvailableFlightCard({
    super.key,
    required this.from,
    required this.to,
    required this.amount,
    required this.startTime,
    required this.stopTime,
  });
  final String from;
  final String to;
  final String startTime;
  final String stopTime;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: from,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                Image.asset("assets/images/line.png"),
                CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.orange,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: AppColors.inputGrey,
                    child: Image.asset(
                      "assets/images/Arrow.png",
                      height: 55,
                    ),
                  ),
                ),
                Image.asset("assets/images/line.png"),
                TextWidget(
                  text: to,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: startTime,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                const TextWidget(
                  text: 'non-stop',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                TextWidget(
                  text: stopTime,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ],
            ),
            const SizedBox(height: 43),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/srilankan_airline.png",
                ),
                TextWidget(
                  text: amount,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: AppColors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
