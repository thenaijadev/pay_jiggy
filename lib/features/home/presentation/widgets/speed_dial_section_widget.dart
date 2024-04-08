import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/speed_dial_item.dart';

class SpeedDialSection extends StatelessWidget {
  const SpeedDialSection({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: title,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpeedDialItem<IconData>(icon: Icons.wifi, label: "Data"),
            SpeedDialItem<IconData>(icon: Icons.phone, label: "Data"),
            SpeedDialItem<IconData>(
                icon: Icons.airplanemode_active, label: "Data"),
            SpeedDialItem<String>(icon: "assets/images/more.png", label: "Data")
          ],
        )
      ],
    );
  }
}
