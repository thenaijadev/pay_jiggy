import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/profile/presentation/widgets/profile_header.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/images/curve_rectangle.png"),
            const Center(child: ProfileHeader())
          ],
        )
      ],
    );
  }
}
