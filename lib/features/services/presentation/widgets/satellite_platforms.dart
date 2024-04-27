import 'package:flutter/material.dart';
import 'package:pay_jiggy/app/enums.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';

class SatellitePlatform extends StatelessWidget {
  const SatellitePlatform(
      {super.key,
      required this.image,
      required this.onTap,
      required this.platform,
      required this.choosenPlatform});
  final String image;
  final VoidCallback onTap;
  final SatellitePlatforms platform;
  final SatellitePlatforms choosenPlatform;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: choosenPlatform == platform
                        ? AppColors.orange
                        : Colors.transparent,
                    width: 2)),
            height: 70,
            width: 70,
            child: Image.asset(image),
          ),
          Positioned(
            right: -5,
            top: -5,
            child: Opacity(
              opacity: choosenPlatform == platform ? 1 : 0,
              child: const CircleAvatar(
                backgroundColor: AppColors.orange,
                radius: 15,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
