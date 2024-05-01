import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/gift_card_widget.dart';

class GiftCardScreen extends StatelessWidget {
  const GiftCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "My Gift cards",
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [GiftCardWidget(), GiftCardWidget(), GiftCardWidget()],
          ),
        ),
      ),
    );
  }
}
