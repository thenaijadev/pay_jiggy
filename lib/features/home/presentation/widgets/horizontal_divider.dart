import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  final double thickness;
  final Color color;

  const HorizontalDivider(
      {super.key, this.thickness = 1, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Container(
        height: thickness,
        color: color,
      ),
    );
  }
}
