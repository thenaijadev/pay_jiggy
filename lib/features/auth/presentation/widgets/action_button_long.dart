import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ActionButtonLong extends StatelessWidget {
  const ActionButtonLong({super.key, required this.label, required this.onTap});
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              minimumSize: MaterialStatePropertyAll<Size>(
                Size(MediaQuery.of(context).size.width, 50),
              ),
              backgroundColor: const MaterialStatePropertyAll(Colors.black)),
          onPressed: onTap,
          child: TextWidget(
            text: label,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ));
  }
}
