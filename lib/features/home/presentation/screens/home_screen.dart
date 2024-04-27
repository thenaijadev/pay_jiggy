import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';

import 'package:pay_jiggy/features/home/presentation/widgets/bottom_nav_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/home_tab.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/logout_popup_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/menu_list_tile.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/wallet_tab.dart';
import 'package:pay_jiggy/features/profile/presentation/screens/profile_tab.dart';
import 'package:pay_jiggy/features/services/presentation/screens/services_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
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

    final List<Map<String, dynamic>> drawerItems = [
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.editProfile);
        },
        "label": "Edit Profie",
        "icon": "assets/images/profile_img.png"
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.securitySetting);
        },
        "label": "Security settings",
        "icon": "assets/images/security_img.png"
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.privacyPolicy);
        },
        "label": "Privacy Policy",
        "icon": "assets/images/privacy_img.png"
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.helpAndSupport);
        },
        "label": "Help & Support",
        "icon": "assets/images/help_img.png"
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.contactUs);
        },
        "label": "Contact Us",
        "icon": "assets/images/contact_img.png"
      },
      {
        "onTap": () {
          showDialog(
              context: context,
              builder: (context) {
                return const LogoutPopupWidget();
              });
        },
        "label": "Logout",
        "icon": "assets/images/logout.png"
      },
    ];

    return Scaffold(
      key: _scaffoldKey,
      drawer: Padding(
        padding: const EdgeInsets.only(top: 150.0, right: 50),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.orange,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: List.generate(
                drawerItems.length,
                (index) {
                  final item = drawerItems[index];
                  return MenuListTile(
                    item: item,
                    onTap: drawerItems[index]["onTap"],
                  );
                },
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavWidget(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
