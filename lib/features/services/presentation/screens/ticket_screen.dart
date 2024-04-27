import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';

class Ticket extends StatefulWidget {
  const Ticket({super.key});

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Card(
                surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 55,
                          child: Image.asset('assets/images/profile.png')),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'Alexander Michael',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          TextWidget(
                            text: 'Passanger',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Card(
                surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 23,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextWidget(
                            text: 'ABJ',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          Image.asset("assets/images/line.png"),
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: AppColors.orange,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: AppColors.inputGrey,
                              child: Image.asset(
                                "assets/images/Arrow.png",
                                height: 55,
                              ),
                            ),
                          ),
                          Image.asset("assets/images/line.png"),
                          const TextWidget(
                            text: 'PH',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(text: 'Date: '),
                          TextWidget(text: 'Time: '),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Card(
                surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              TextWidget(text: 'Gate'),
                              TextWidget(
                                text: 'B18',
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextWidget(text: 'Seat'),
                              TextWidget(
                                text: '14B',
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextWidget(text: 'Flight No'),
                              TextWidget(
                                text: 'DE30',
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextWidget(text: 'Class'),
                              TextWidget(
                                text: 'Economy',
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 60),
                      Image.asset(
                        "assets/images/barcode.png",
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ActionButtonOrange(
                onTap: () {},
                label: "Downlod ticket",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
