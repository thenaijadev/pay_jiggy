import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/funds_details_card.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/horizontal_divider.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/screen_header.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/speed_dial_section_widget.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/services_grid.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key, required this.onMenuTap});
  final VoidCallback onMenuTap;

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            ScreenHeader(
              onTap: widget.onMenuTap,
            ),
            const SizedBox(
              height: 30,
            ),
            const FundsDetailsCard(),
            const SizedBox(
              height: 50,
            ),
            const SpeedDialSection(
              title: "Speed Dial",
            ),
            const HorizontalDivider(),
            const TextWidget(
              text: "Services",
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            const ServicesGrid(),
          ],
        ),
      ),
    );
  }
}
