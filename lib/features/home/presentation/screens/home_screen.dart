import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/home_tab.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/services_tab.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/wallet_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2; // Set the middle index as default

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    final List<Widget> tabs = [
      const Placeholder(),
      const ServicesTab(),
      const HomeTab(),
      const WalletTab(),
      const Placeholder()
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed, // Ensures 5 icons fit
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/menu.png",
              width: 30,
              color: selectedIndex == 0 ? AppColors.orange : null,
            ),
            label: 'Menu',
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
              "assets/images/home.png",
              width: 30,
              color: selectedIndex == 2 ? AppColors.orange : null,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/wallet.png",
              width: 30,
              color: selectedIndex == 3 ? AppColors.orange : null,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/profile_tab_icon.png",
              width: 30,
              color: selectedIndex == 4 ? AppColors.orange : null,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.orange, // Color for selected item
        onTap: onItemTapped,
      ),
    );
  }
}
