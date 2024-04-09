import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/service_tile.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {"label": "Data", "icon": Icons.wifi},
      {"label": "Airtime", "icon": Icons.phone},
      {"label": "Book Flight", "icon": Icons.airplanemode_active_outlined},
      {"label": "Cable Tv", "icon": Icons.tv},
      {"label": "Electricity Bill", "icon": Icons.bolt},
      {"label": "Gift Card", "icon": Icons.card_giftcard},
      {"label": "Education", "icon": Icons.menu_book_outlined},
      {"label": "Bulk SMS", "icon": Icons.message},
      {"label": "Apple ID", "icon": Icons.apple},
      {"label": "Airtime to Cash", "icon": Icons.swap_horiz_outlined},
      {"label": "Ticket Booking", "icon": Icons.local_activity},
      {"label": "Recharge Card", "icon": Icons.credit_card},
      {"label": "Wallet to Bank", "icon": Icons.wallet},
      {"label": "Buy Data Pin", "icon": Icons.wifi},
      {"label": "Buy Airtime Pin", "icon": Icons.phone},
      {"label": "Pricing", "icon": Icons.monetization_on},
    ];
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        height: 300,
        child: ListView.builder(
            itemCount: services.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ServiceTile(
                  onTap: () {},
                  label: services[index]["label"],
                  icon: services[index]["icon"],
                ),
              );
            }));
  }
}
