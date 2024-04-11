import 'package:flutter/material.dart';

class UnreadMassageWidget extends StatelessWidget {
  const UnreadMassageWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 3,
            backgroundColor: Colors.black,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color.fromARGB(95, 255, 165, 54),
            child: Image.asset(
              "assets/images/unread_message.png",
              width: 25,
            ),
          ),
        ],
      ),
    );
  }
}
