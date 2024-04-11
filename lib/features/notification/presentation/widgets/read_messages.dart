import 'package:flutter/material.dart';

class ReadMessageWidget extends StatelessWidget {
  const ReadMessageWidget({
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
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color.fromARGB(95, 255, 165, 54),
            child: Image.asset(
              "assets/images/read_message.png",
              width: 25,
            ),
          ),
        ],
      ),
    );
  }
}
