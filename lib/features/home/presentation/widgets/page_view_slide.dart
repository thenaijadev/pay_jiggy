import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/advert_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewSlide extends StatefulWidget {
  const PageViewSlide({
    super.key,
  });

  @override
  State<PageViewSlide> createState() => _PageViewSlideState();
}

class _PageViewSlideState extends State<PageViewSlide> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                controller: _pageController,
                children: const [
                  AdvertCard(),
                  AdvertCard(),
                  AdvertCard(),
                  AdvertCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
                controller: _pageController, // PageController
                count: 4,
                effect: const WormEffect(
                    activeDotColor: AppColors.orange,
                    dotColor: Color.fromARGB(255, 116, 116, 116),
                    dotHeight: 5,
                    dotWidth: 5), // your preferred effect
                onDotClicked: (index) {
                  _pageController.animateToPage(
                      duration: const Duration(milliseconds: 300),
                      index,
                      curve: Curves.easeIn);
                }),
          ],
        ));
  }
}
