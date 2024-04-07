import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/action_button_long.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/message_option.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool smsIsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TextWidget(
              text: "Forgot Password",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            Column(
              children: [
                const TextWidget(
                  text:
                      "Select which contact details to be used to reset your password",
                ),
                const SizedBox(
                  height: 25,
                ),
                MessageOption(
                  smsIsSelected: smsIsSelected,
                  onTap: () {
                    setState(() {
                      smsIsSelected = true;
                    });
                  },
                  image: "assets/images/sms.png",
                  label: "sms",
                ),
                const SizedBox(
                  height: 25,
                ),
                MessageOption(
                  smsIsSelected: !smsIsSelected,
                  onTap: () {
                    setState(() {
                      smsIsSelected = false;
                    });
                  },
                  image: "assets/images/message.png",
                  label: "Email",
                ),
                const SizedBox(
                  height: 30,
                ),
                ActionButtonLong(
                    label: "Continue",
                    onTap: () {
                      if (smsIsSelected) {
                        Navigator.pushNamed(
                            context, Routes.forgotPasswordPhoneNumber);
                      } else {
                        Navigator.pushNamed(
                            context, Routes.forgotPasswordEmail);
                      }
                    }),
                const SizedBox(
                  height: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
