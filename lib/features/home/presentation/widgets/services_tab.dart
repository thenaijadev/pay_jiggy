import 'package:flutter/material.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/page_view_slide.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/service_tab_header.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/services_grid.dart';

class ServicesTab extends StatefulWidget {
  const ServicesTab({super.key});

  @override
  State<ServicesTab> createState() => _ServicesTabState();
}

class _ServicesTabState extends State<ServicesTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: const [
            ServiceTabHeader(),
            PageViewSlide(),
            ServicesGrid(),
          ],
        ),
      ),
    );
  }
}
