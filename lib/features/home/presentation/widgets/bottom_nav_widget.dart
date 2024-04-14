import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed, // Ensures 5 icons fit
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/home.png",
            width: 30,
            color: selectedIndex == 0 ? AppColors.orange : null,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          // This is the middle one (index 2)
          icon: Image.asset(
            "assets/images/services.png",
            width: 30,
            color: selectedIndex == 1 ? AppColors.orange : null,
          ), // Make the middle icon slightly larger
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/wallet.png",
            width: 30,
            color: selectedIndex == 2 ? AppColors.orange : null,
          ),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/profile_tab_icon.png",
            width: 30,
            color: selectedIndex == 3 ? AppColors.orange : null,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: AppColors.orange, // Color for selected item
      onTap: onItemTapped,
    );
  }
}
