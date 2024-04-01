import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 23),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(15)),
          child: const Row(
            children: [
              TextWidget(
                  text: "Next",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}
