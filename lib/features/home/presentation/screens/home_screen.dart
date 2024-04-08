import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/funds_details_card.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/horizontal_divider.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/screen_header.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/speed_dial_section_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              HorizontalDivider()
            ],
          ),
        ),
      ),
    );
  }
}
