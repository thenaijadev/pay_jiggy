import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/service_grid_item.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.mobileData);
        },
        "label": "Data",
        "icon": Icons.wifi
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.airtime);
        },
        "label": "Airtime",
        "icon": Icons.phone
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.bookFlight);
        },
        "label": "Book Flight",
        "icon": Icons.airplanemode_active_outlined
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.cableTv);
        },
        "label": "Cable Tv",
        "icon": Icons.tv
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.electricityBill);
        },
        "label": "Electricity Bill",
        "icon": Icons.bolt
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.giftCard);
        },
        "label": "Gift Card",
        "icon": Icons.card_giftcard
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.education);
        },
        "label": "Education",
        "icon": Icons.menu_book_outlined
      },
      {"onTap": () {}, "label": "Bulk SMS", "icon": Icons.message},
      {"onTap": () {}, "label": "Apple ID", "icon": Icons.apple},
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.airtimeToCash);
        },
        "label": "Airtime to Cash",
        "icon": Icons.swap_horiz_outlined
      },
      {"onTap": () {}, "label": "Ticket Booking", "icon": Icons.local_activity},
      {"onTap": () {}, "label": "Recharge Card", "icon": Icons.credit_card},
      {"onTap": () {}, "label": "Wallet to Bank", "icon": Icons.wallet},
      {"onTap": () {}, "label": "Buy Data Pin", "icon": Icons.wifi},
      {"onTap": () {}, "label": "Buy Airtime Pin", "icon": Icons.phone},
      {"onTap": () {}, "label": "Pricing", "icon": Icons.monetization_on},
    ];

    return SizedBox(
      height: 400,
      child: GridView.count(
        crossAxisCount: 4, // Two items per row
        children: List.generate(services.length, (index) {
          return ServiceGridItem(
              onTap: services[index]["onTap"],
              icon: services[index]["icon"],
              label: services[index]["label"]);
        }),
      ),
    );
  }
}
