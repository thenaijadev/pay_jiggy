import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  final double thickness;
  final Color color;
  final double paddingVertical;
  final double? width;
  const HorizontalDivider(
      {super.key,
      this.thickness = 1,
      this.width,
      this.color = Colors.grey,
      this.paddingVertical = 40});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingVertical),
      child: Container(
        height: thickness,
        color: color,
      ),
    );
  }
}
