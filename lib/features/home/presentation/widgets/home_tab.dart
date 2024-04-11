import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/funds_details_card.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/horizontal_divider.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/screen_header.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/speed_dial_section_widget.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/services_grid.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

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
          children: const [
            SizedBox(
              height: 20,
            ),
            ScreenHeader(),
            SizedBox(
              height: 30,
            ),
            FundsDetailsCard(),
            SizedBox(
              height: 50,
            ),
            SpeedDialSection(
              title: "Speed Dial",
            ),
            HorizontalDivider(),
            TextWidget(
              text: "Services",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            ServicesGrid(),
          ],
        ),
      ),
    );
  }
}
