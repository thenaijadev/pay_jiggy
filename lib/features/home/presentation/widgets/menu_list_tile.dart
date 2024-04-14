import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    super.key,
    required this.drawerItems,
    required this.item,
    required this.onTap,
  });

  final List<Map<String, dynamic>> drawerItems;
  final Map<String, dynamic> item;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 17, horizontal: 12),
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
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
