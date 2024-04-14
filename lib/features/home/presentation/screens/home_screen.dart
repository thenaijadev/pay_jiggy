import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
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
  int selectedIndex = 0; // Set the middle index as default
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
        "onTap": () {},
        "label": "Edit Profie",
        "icon": "assets/images/profile_img.png"
      },
      {
        "onTap": () {},
        "label": "Security settings",
        "icon": "assets/images/security_img.png"
      },
      {
        "onTap": () {},
        "label": "Privacy Policy",
        "icon": "assets/images/privacy_img.png"
      },
      {
        "onTap": () {},
        "label": "Help & Support",
        "icon": "assets/images/help_img.png"
      },
      {
        "onTap": () {},
        "label": "Contact Us",
        "icon": "assets/images/contact_img.png"
      },
      {"onTap": () {}, "label": "Logout", "icon": "assets/images/logout.png"},
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
              children: List.generate(drawerItems.length, (index) {
                final item = drawerItems[index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 12),
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(95, 255, 165, 54),
                            child: Image.asset(
                              item["icon"],
                              width: 13,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextWidget(text: item["label"])
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Icon(
                          CupertinoIcons.forward,
                          color: Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
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
