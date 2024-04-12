import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> drawerItems = [
      {"onTap": () {}, "label": "Data", "icon": Icons.wifi},
      {"onTap": () {}, "label": "Airtime", "icon": Icons.phone},
      {
        "onTap": () {},
        "label": "Book Flight",
        "icon": Icons.airplanemode_active_outlined
      },
    ];
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: ListView.builder(
          itemCount: drawerItems.length,
          itemBuilder: (context, index) {
            return null;
          }),
    );
  }
}
