import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(140),
            border: const Border(
              bottom: BorderSide(width: 1, color: Colors.black),
              top: BorderSide(width: 1, color: Colors.black),
              right: BorderSide(width: 1, color: Colors.black),
              left: BorderSide(width: 1, color: Colors.black),
            ),
          ),
          child: Image.asset(image),
        ),
        TextWidget(
          text: "Hi $name",
          fontSize: 18,
          color: const Color.fromARGB(218, 18, 18, 29),
        ),
        const TextWidget(
          text: "How are you doing today?",
          fontSize: 10,
          color: Color(0xff12121D),
        )
      ],
    );
  }
}
