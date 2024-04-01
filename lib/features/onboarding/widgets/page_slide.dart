import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class PageSlide extends StatelessWidget {
  const PageSlide(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle});
  final String imagePath;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 360,
          ),
          const SizedBox(
            height: 150,
          ),
          TextWidget(
            text: title,
            textAlign: TextAlign.start,
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(
            height: 20,
          ),
          TextWidget(
            text: subTitle,
            textAlign: TextAlign.start,
            fontSize: 14,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
