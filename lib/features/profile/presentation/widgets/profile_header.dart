import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(140),
            border: const Border(
              bottom: BorderSide(width: 1, color: Colors.black),
              top: BorderSide(width: 1, color: Colors.black),
              right: BorderSide(width: 1, color: Colors.black),
              left: BorderSide(width: 1, color: Colors.black),
            ),
          ),
          child: Image.asset("assets/images/profile.png"),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextWidget(
          text: "Alexander Michael",
          fontSize: 18,
          color: Colors.white,
        ),
        const TextWidget(
          text: "+2349832423423",
          fontSize: 10,
          color: Colors.white,
        )
      ],
    );
  }
}
