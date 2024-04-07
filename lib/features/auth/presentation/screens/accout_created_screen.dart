import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/onboarding/widgets/next_button_widget.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/success_check.png",
              width: 200,
            ),
            const TextWidget(
              text: "Congratulations!",
              fontSize: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextWidget(
                textAlign: TextAlign.center,
                text: "Your account has been created. Welcome onboard!",
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(
                    label: "Continue",
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.createPin);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
