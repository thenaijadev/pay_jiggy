import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Privacy Policy",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.orange)),
        child: const SingleChildScrollView(
          child: TextWidget(
            text: """
Hey Payjiggy Users!

At Payjiggy, we've got your back, and we take your privacy seriously. Here's the lowdown:

1. What We Collect:
We collect the basics - your name, email, and the info you need to make the app work seamlessly. No unnecessary snooping!
2. Your Transactions Stay Yours:
Your financial transactions are your business, not ours. We don't sell, share, or peek into your personal money moves.
3. Security First:
We use top-notch security tech to safeguard your data. Think of it as a digital vault - your financial secrets are safe with us.
4. No Third-Party Shenanigans:
We don't play nice with third-party apps. Your data is exclusively for making MoneyMate awesome for you.
5. Communication Respect:
We might drop you an email now and then, but only for important stuff. No spammy nonsense, we promise.
6. Anonymous Analytics:
We use anonymous data to improve MoneyMate. It's like helping us fine-tune without sacrificing your privacy.
7. Your Choices Matter:
You're in control. Tweak your privacy settings anytime in the app. Your app, your rules.
8. Changes? We'll Tell You:
If we tweak our privacy policy, we'll give you a heads up. Transparency is the name of the game.
9. Need Help? We're Here:
Got questions? Hit us up. We're real people ready to help you out.
In a nutshell, we're here to make managing your money stress-free and secure. Cheers to financial peace of mind with Payjiggy! 🚀
Hope this suits your financial app's vibe! If you have specific preferences or need adjustments, let me know!
""",
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
