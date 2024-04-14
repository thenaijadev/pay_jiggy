import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/profile/presentation/widgets/radio_button_widgets.dart';

class UserType extends StatelessWidget {
  const UserType({
    super.key,
    required this.buttonLabelOne,
    required this.isSubcriber,
    required this.onTapOne,
    required this.onTapTwo,
    required this.buttonLabelTwo,
  });
  final String buttonLabelOne;
  final String buttonLabelTwo;

  final bool isSubcriber;
  final VoidCallback onTapOne;
  final VoidCallback onTapTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RadioButtonWidget(
            onTapOne: onTapOne,
            buttonLabelOne: buttonLabelOne,
            isSubcriber: isSubcriber),
        RadioButtonWidget(
            onTapOne: onTapTwo,
            buttonLabelOne: buttonLabelTwo,
            isSubcriber: !isSubcriber),
      ],
    );
  }
}
