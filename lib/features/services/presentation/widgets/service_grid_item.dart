import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ServiceGridItem extends StatelessWidget {
  const ServiceGridItem(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap});
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          decoration: BoxDecoration(
            color:
                const Color.fromARGB(95, 255, 165, 54), // Set background color
            borderRadius: BorderRadius.circular(10.0), // Add rounded corners
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 15,
                child: Icon(
                  icon,
                  size: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                text: label,
                fontSize: 10,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
