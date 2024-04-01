import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required PageController pageController,
    required this.theme,
  }) : _pageController = pageController;

  final PageController _pageController;
  final ColorScheme theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            _pageController.animateToPage(
                duration: const Duration(milliseconds: 300),
                3,
                curve: Curves.easeIn);
          },
          child: TextWidget(
            text: "Skip",
            textAlign: TextAlign.center,
            color: theme.primary,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
