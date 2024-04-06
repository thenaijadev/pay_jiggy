import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    PageController? pageController,
    required this.label,
    required this.onTap,
  }) : _pageController = pageController;

  final PageController? _pageController;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (_pageController?.page! == 2) {
            Navigator.pushReplacementNamed(context, Routes.login);
          }
          _pageController?.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
          onTap();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 23),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              TextWidget(
                  text: label,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}
