import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class BioScreenbtn extends StatelessWidget {
  const BioScreenbtn({super.key, required this.onTap, required this.label});
  final VoidCallback onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              minimumSize: const MaterialStatePropertyAll<Size>(
                Size(140, 50),
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
