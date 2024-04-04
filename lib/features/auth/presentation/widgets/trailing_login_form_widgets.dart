import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class TrailingLoginFormWidgets extends StatelessWidget {
  const TrailingLoginFormWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidget(text: "Don't have an account? "),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.signUp);
                },
                child: const TextWidget(
                  text: "Sign up.",
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/face_id.png",
            width: 60,
          )
        ],
      ),
    );
  }
}
