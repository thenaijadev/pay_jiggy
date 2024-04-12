import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> profileItems = [
      {
        "onTap": () {},
        "label": "Wallet",
        "icon": "assets/images/wallet_img.png"
      },
      {"onTap": () {}, "label": "Order", "icon": "assets/images/order_img.png"},
      {
        "onTap": () {},
        "label": "Referrals",
        "icon": "assets/images/referals_img.png"
      },
      {
        "onTap": () {},
        "label": "History",
        "icon": "assets/images/history_img.png"
      },
      {
        "onTap": () {},
        "label": "Share App",
        "icon": "assets/images/share_img.png"
      },
      {
        "onTap": () {},
        "label": "Settings",
        "icon": "assets/images/settings_img.png"
      },
      {
        "onTap": () {},
        "label": "Edit Profile",
        "icon": "assets/images/edit_profile_img.png"
      },
      {
        "onTap": () {},
        "label": "Logout",
        "icon": "assets/images/logout_img.png"
      },
    ];

    return SizedBox(
      height: 450,
      child: ListView.builder(
        itemCount: profileItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 18,
              child: Image.asset(
                profileItems[index]["icon"],
                width: 18,
              ),
            ),
            title: Row(
              children: [
                TextWidget(
                  text: profileItems[index]["label"],
                  fontSize: 16,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            trailing: const Icon(CupertinoIcons.forward),
          );
        },
      ),
    );
  }
}
