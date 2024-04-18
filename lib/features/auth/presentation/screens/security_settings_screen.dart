import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/menu_list_tile.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> settings = [
      {
        "onTap": () {},
        "label": "Change Password",
        "icon": "assets/images/profile_img.png"
      },
      {
        "onTap": () {},
        "label": "Change Transaction Pin",
        "icon": "assets/images/security_img.png"
      },
      {
        "onTap": () {},
        "label": "Biometric Settings",
        "icon": "assets/images/privacy_img.png"
      },
      {
        "onTap": () {},
        "label": "Contact Us",
        "icon": "assets/images/help_img.png"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Security Settings",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: List.generate(
            settings.length,
            (index) => MenuListTile(
                  item: settings[index],
                  onTap: settings[index]["onTap"],
                  isIconVisible: false,
                )),
      ),
    );
  }
}
