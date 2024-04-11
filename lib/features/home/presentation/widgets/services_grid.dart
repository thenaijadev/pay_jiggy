import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/lists.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/service_grid_item.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.count(
        crossAxisCount: 4, // Two items per row
        children: List.generate(services.length, (index) {
          return ServiceGridItem(
              icon: services[index]["icon"], label: services[index]["label"]);
        }),
      ),
    );
  }
}
