import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.primary,
      appBar: AppBar(
        backgroundColor: theme.primary,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Sign Up",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  TextWidget(text: "Enter your "),
                  TextWidget(
                    text: "phone number",
                    textDecoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(text: " below")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextWidget(
                  text:
                      "We will send a 4 digit verification code to verify your phone number.")
            ],
          ),
        ),
      ),
    );
  }
}
