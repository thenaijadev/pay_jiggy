import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/drawer_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/home_tab.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/wallet_tab.dart';
import 'package:pay_jiggy/features/profile/presentation/screens/profile_tab.dart';
import 'package:pay_jiggy/features/services/presentation/screens/services_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2; // Set the middle index as default
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    final List<Widget> tabs = [
      HomeTab(
        onMenuTap: () {
          setState(() {
            _scaffoldKey.currentState?.openDrawer();
          });
        },
      ),
      const ServicesTab(),
      WalletTab(
        onMenuTap: () {
          setState(() {
            _scaffoldKey.currentState?.openDrawer();
          });
        },
      ),
      const ProfileTab()
    ];
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Padding(
          padding: EdgeInsets.only(top: 150.0, right: 50),
          child: DrawerWidget()),
      backgroundColor: Colors.white,
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed, // Ensures 5 icons fit
        items: <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: GestureDetector(
          //     onTap: () {
          //       setState(() {
          //         _scaffoldKey.currentState?.openDrawer();
          //       });
          //     },
          //     child: Image.asset(
          //       "assets/images/menu.png",
          //       width: 30,
          //       color: selectedIndex == 0 ? AppColors.orange : null,
          //     ),
          //   ),
          //   label: 'Menu',
          // ),
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
      ),
    );
  }
}
