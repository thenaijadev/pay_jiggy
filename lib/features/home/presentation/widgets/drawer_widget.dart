// import 'package:flutter/material.dart';
// import 'package:pay_jiggy/core/constants/app_colors.dart';

// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> drawerItems = [
//       {
//         "onTap": () {},
//         "label": "Wallet",
//         "icon": "assets/images/wallet_img.png"
//       },
//       {"onTap": () {}, "label": "Order", "icon": "assets/images/order_img.png"},
//       {
//         "onTap": () {},
//         "label": "Referrals",
//         "icon": "assets/images/referals_img.png"
//       },
//       {
//         "onTap": () {},
//         "label": "History",
//         "icon": "assets/images/history_img.png"
//       },
//       {
//         "onTap": () {},
//         "label": "Share App",
//         "icon": "assets/images/share_img.png"
//       },
//       {
//         "onTap": () {},
//         "label": "Settings",
//         "icon": "assets/images/settings_img.png"
//       },
//       {
//         "onTap": () {},
//         "label": "Edit Profile",
//         "icon": "assets/images/edit_profile_img.png"
//       },
//       {
//         "onTap": () {},
//         "label": "Logout",
//         "icon": "assets/images/logout_img.png"
//       },
//     ];
//     return Container(
//         height: 300,
//         decoration: const BoxDecoration(
//           color: AppColors.orange,
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(30),
//             bottomRight: Radius.circular(30),
//           ),
//         ),
//         child: const Column(
//           children: [DrawerItem(image: "image")],
//         ));
//   }
// }

// class DrawerItem extends StatelessWidget {
//   const DrawerItem({super.key, required this.image});
//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 30,
//       decoration: const BoxDecoration(color: Colors.amber),
//       child: Row(
//         children: [
//           ListTile(
//             leading: CircleAvatar(
//               radius: 18,
//               child: Image.asset(
//                 image,
//                 width: 18,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
