import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ProfileGridItem extends StatelessWidget {
  const ProfileGridItem({super.key, required this.image, required this.label});
  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(95, 255, 165, 54), // Set background color
          borderRadius: BorderRadius.circular(10.0), // Add rounded corners
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              child: Image.asset(
                image,
                width: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
              text: label,
              fontSize: 12,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
