import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';

class PopUpWidget extends StatelessWidget {
  const PopUpWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.buttonLabelOne,
    required this.buttonLabelTwo,
    required this.onTapOne,
    required this.onTapOTwo,
  });

  final String title;
  final String subTitle;
  final String buttonLabelOne;
  final String buttonLabelTwo;
  final VoidCallback onTapOne;
  final VoidCallback onTapOTwo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        backgroundColor: Colors.white,
        content: Container(
          height: 394,
          width: 396,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(radius: 35, child: Icon(Icons.check)),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                text: title,
                fontSize: 20,
                color: AppColors.orange,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                textAlign: TextAlign.center,
                text: subTitle,
              ),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              ActionButtonOrange(
                onTap: onTapOne,
                label: buttonLabelOne,
              ),
              const SizedBox(
                height: 10,
              ),
              ActionButtonOrange(
                onTap: onTapOTwo,
                backgroundColor: const Color(0xffFE6310),
                label: buttonLabelTwo,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
