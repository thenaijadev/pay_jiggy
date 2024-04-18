import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile(
      {super.key,
      required this.item,
      required this.onTap,
      this.isIconVisible = true});

  final Map<String, dynamic> item;
  final VoidCallback onTap;
  final bool isIconVisible;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 17, horizontal: 12),
        height: 72,
        decoration: BoxDecoration(
          border: !isIconVisible
              ? Border.all(
                  color: AppColors.orange,
                )
              : null,
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (isIconVisible)
                  const SizedBox(
                    width: 20,
                  ),
                if (isIconVisible)
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(95, 255, 165, 54),
                    child: Image.asset(
                      item["icon"],
                      width: 13,
                    ),
                  ),
                const SizedBox(
                  width: 20,
                ),
                TextWidget(text: item["label"])
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                CupertinoIcons.forward,
                color: Color(0xff999999),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
