import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Help and Support",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
