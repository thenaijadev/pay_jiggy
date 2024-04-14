import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({
    super.key,
    required this.onTapOne,
    required this.buttonLabelOne,
    required this.isSubcriber,
  });

  final VoidCallback onTapOne;
  final String buttonLabelOne;
  final bool isSubcriber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapOne,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: isSubcriber ? AppColors.orange : const Color(0xffC5C5C8),
          ),
        ),
        child: Center(
          child: TextWidget(
            text: buttonLabelOne,
            fontWeight: isSubcriber ? FontWeight.bold : FontWeight.normal,
            color: isSubcriber ? AppColors.orange : const Color(0xffC5C5C8),
          ),
        ),
      ),
    );
  }
}
