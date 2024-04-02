import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Adjust the radius here
          ),
        ),
        elevation: const MaterialStatePropertyAll(5),
        backgroundColor: const MaterialStatePropertyAll(Colors.black),
        minimumSize: const MaterialStatePropertyAll(
          Size(double.infinity, 50),
        ),
      ),
      onPressed: onPressed,
      child: const TextWidget(
        text: "Sign In",
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
