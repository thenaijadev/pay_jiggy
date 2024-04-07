import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class MessageOption extends StatefulWidget {
  const MessageOption(
      {super.key,
      required this.smsIsSelected,
      required this.onTap,
      required this.image,
      required this.label});
  final bool smsIsSelected;
  final VoidCallback onTap;
  final String image;
  final String label;
  @override
  State<MessageOption> createState() => _MessageOptionState();
}

class _MessageOptionState extends State<MessageOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 35, 35, 35)
                  .withOpacity(0.14), // Adjust color and opacity
              spreadRadius: 0.0, // Adjust blur radius
              blurRadius: 5.0, // Adjust shadow spread
              offset: const Offset(1, 1), // Adjust shadow position
            )
          ],
          color: const Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(30),
          border: widget.smsIsSelected
              ? Border.all(width: 2, color: Colors.black)
              : Border.all(
                  width: 0,
                ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xffECE7FF),
                radius: 32.5,
                child: Image.asset(
                  widget.image,
                  width: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextWidget(
                text: "Via ${widget.label}",
                fontWeight:
                    widget.smsIsSelected ? FontWeight.normal : FontWeight.w100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
