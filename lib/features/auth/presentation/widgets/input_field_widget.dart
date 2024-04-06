import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget(
      {super.key,
      this.label = "",
      required this.hintColor,
      this.initialValue,
      required this.hintText,
      this.hintSize = 14,
      required this.onChanged,
      this.validator,
      required this.textFieldkey,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixicon,
      this.padding = const EdgeInsets.only(bottom: 10),
      this.onTap,
      this.maxLines = 1,
      this.fontWeight = FontWeight.w600,
      this.labelFontSize = 16,
      this.enabledBorderRadius = 30,
      this.verticalContentPadding = 0,
      this.controller});
  final String label;
  final String hintText;
  final double hintSize;
  final void Function(String?) onChanged;
  final void Function()? onTap;

  final String? Function(String?)? validator;
  final GlobalKey<FormFieldState> textFieldkey;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixicon;
  final String? initialValue;
  final EdgeInsetsGeometry padding;
  final int? maxLines;
  final double enabledBorderRadius;
  final double verticalContentPadding;
  final FontWeight fontWeight;
  final Color hintColor;
  final double labelFontSize;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: padding,
          child: TextWidget(
            text: label,
            color: Colors.black,
            fontWeight: fontWeight,
            fontSize: labelFontSize,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0), // Adjust as needed
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 35, 35, 35)
                    .withOpacity(0.3), // Adjust color and opacity
                spreadRadius: 0.0, // Adjust blur radius
                blurRadius: 5.0, // Adjust shadow spread
                offset: const Offset(1, 2), // Adjust shadow position
              )
            ],
          ),
          child: TextFormField(
            controller: controller,
            onTap: onTap,
            key: textFieldkey,
            initialValue: initialValue,
            onChanged: onChanged,
            maxLines: maxLines,
            validator: validator,
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: prefixicon,
              filled: true,
              fillColor: Colors.white,
              suffixIcon: suffixIcon,
              hintStyle: TextStyle(
                  color: hintColor,
                  fontSize: hintSize,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Neue Plak'),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 24, vertical: verticalContentPadding),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary, width: 1),
                borderRadius: BorderRadius.circular(enabledBorderRadius),
              ),
              hintText: hintText,
            ),
          ),
        ),
      ]),
    );
  }
}
