import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Contact Us",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
