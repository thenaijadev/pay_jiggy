import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/onboarding/widgets/indicator_widget.dart';
import 'package:pay_jiggy/features/onboarding/widgets/page_slide.dart';
import 'package:pay_jiggy/features/onboarding/widgets/skip_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.primary,
      body: Stack(
        children: [
          Image.asset("assets/images/curve.png"),
          ListView(
            children: [
              SkipButton(pageController: _pageController, theme: theme),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.80,
                child: PageView(
                  controller: _pageController,
                  children: const [
                    PageSlide(
                      subTitle:
                          "Say goodbye to manual tasks and hello to a smarter, more efficient way to manage your money. Start saving time and stay on top of your finances with PayJiggy.",
                      imagePath: "assets/images/onboarding_1.png",
                      title: "Automated Services",
                    ),
                    PageSlide(
                      subTitle:
                          "Say hello to seamless online payments with PayJiggy.",
                      title: "Online Payments",
                      imagePath: "assets/images/onboarding_2.png",
                    ),
                    PageSlide(
                      subTitle:
                          "With advanced encryption and cutting-edge security features, your payments are safeguarded every step of the way. Rest easy, knowing your financial data is in safe hands. Experience secure payments like never before with PayJiggy. Choose smart. Choose safe.",
                      title: "Secure Payments",
                      imagePath: "assets/images/onboarding_3.png",
                    )
                  ],
                ),
              ),
              IndicatorWidget(pageController: _pageController)
            ],
          ),
        ],
      ),
    );
  }
}
