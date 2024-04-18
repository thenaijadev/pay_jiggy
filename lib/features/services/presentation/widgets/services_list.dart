// import 'package:flutter/material.dart';
// import 'package:pay_jiggy/core/lists.dart';
// import 'package:pay_jiggy/core/widgets/text_widget.dart';
// import 'package:pay_jiggy/features/services/presentation/widgets/service_tile.dart';

// class ServicesList extends StatelessWidget {
//   const ServicesList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Padding(
//           padding: EdgeInsets.symmetric(vertical: 15.0),
//           child: TextWidget(
//             text: "Services",
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Container(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             height: 300,
//             child: ListView.builder(
//                 itemCount: services.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 10.0),
//                     child: ServiceTile(
//                       onTap: services[index]["onTap"],
//                       label: services[index]["label"],
//                       icon: services[index]["icon"],
//                     ),
//                   );
//                 })),
//       ],
//     );
//   }
// }
