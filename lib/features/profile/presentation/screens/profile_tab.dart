import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/notification_widget.dart';
import 'package:pay_jiggy/features/profile/presentation/widgets/profile_header.dart';
import 'package:pay_jiggy/features/profile/presentation/widgets/profile_list.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/images/curve_rectangle.png"),
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0)
                        .copyWith(top: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: "Profile",
                          textAlign: TextAlign.start,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        NotificationWidget(
                          color: Colors.white,
                          backgroundColor: Colors.white,
                          numberColor: Colors.black,
                        )
                      ],
                    ),
                  ),
                  const ProfileHeader()
                ],
              ),
            ),
          ],
        ),
        const ProfileList()
      ],
    );
  }
}
