import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/onboarding/widgets/next_button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmoothPageIndicator(
              controller: _pageController, // PageController
              count: 3,
              effect: const WormEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.black,
                  dotHeight: 10,
                  dotWidth: 10), // your preferred effect
              onDotClicked: (index) {
                _pageController.animateToPage(
                    duration: const Duration(milliseconds: 300),
                    index,
                    curve: Curves.easeIn);
              }),
          NextButton(pageController: _pageController)
        ],
      ),
    );
  }
}
