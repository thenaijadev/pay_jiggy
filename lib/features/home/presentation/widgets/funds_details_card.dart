import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';

class FundsDetailsCard extends StatefulWidget {
  const FundsDetailsCard({super.key});

  @override
  State<FundsDetailsCard> createState() => _FundsDetailsCardState();
}

class _FundsDetailsCardState extends State<FundsDetailsCard> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.orange,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: "Balance: NGN ${isVisible ? '5000' : "*****"}",
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              const SizedBox(
                width: 0,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(isVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Set your desired radius here
                ),
                side: const BorderSide(),
                backgroundColor: const Color(0xff100D40),
              ),
              onPressed: () {},
              icon: Container(
                color: Colors.white,
                height: 24,
                width: 24,
                child: const Icon(
                  Icons.add,
                  color: Color(0xff100D40),
                ),
              ),
              label: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: TextWidget(
                  text: "Add Funds",
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
