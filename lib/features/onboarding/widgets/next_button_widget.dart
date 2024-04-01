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
    return TextButton(
      onPressed: () {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      },
      child: const TextWidget(
        text: "Next",
        fontSize: 18,
      ),
    );
  }
}
