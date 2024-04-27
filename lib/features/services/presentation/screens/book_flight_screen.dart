import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/available_flight_card.dart';

class BookFlightScreen extends StatefulWidget {
  const BookFlightScreen({super.key});

  @override
  State<BookFlightScreen> createState() => _BookFlightScreenState();
}

class _BookFlightScreenState extends State<BookFlightScreen> {
  late GlobalKey<FormFieldState> fromKey;
  late GlobalKey<FormFieldState> toKey;
  late GlobalKey<FormFieldState> departureKey;
  late GlobalKey<FormFieldState> returnKey;

  bool? fromIsValid;
  bool? toIsValid;
  bool? departureValid;
  bool? returnIsValid;

  @override
  void initState() {
    fromKey = GlobalKey<FormFieldState>();
    toKey = GlobalKey<FormFieldState>();
    departureKey = GlobalKey<FormFieldState>();
    returnKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Book Flight",
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(
                  text: 'Lets book your Flight',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                InputFieldWidget(
                    label: "From",
                    labelFontSize: 12,
                    hintColor: const Color(0xff87898E),
                    hintText: "Imo",
                    verticalContentPadding: 5,
                    enabledBorderRadius: 10,
                    onChanged: (val) {
                      setState(() {
                        fromIsValid = fromKey.currentState?.validate();
                      });
                    },
                    validator: (p0) {
                      final emailState = Validator.validateText(
                          fromKey.currentState?.value, "From");
                      return emailState;
                    },
                    textFieldkey: fromKey),
                const SizedBox(
                  height: 10,
                ),
                InputFieldWidget(
                  label: "To",
                  labelFontSize: 12,
                  hintColor: const Color(0xff87898E),
                  hintText: "Lagos",
                  verticalContentPadding: 5,
                  enabledBorderRadius: 10,
                  onChanged: (val) {
                    setState(() {
                      toIsValid = toKey.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final emailState = Validator.validateText(
                        toKey.currentState?.value, "From");
                    return emailState;
                  },
                  textFieldkey: toKey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: InputFieldWidget(
                          label: "Departure",
                          labelFontSize: 12,
                          hintColor: const Color(0xff87898E),
                          hintText: "Imo",
                          verticalContentPadding: 5,
                          enabledBorderRadius: 10,
                          onChanged: (val) {
                            setState(() {
                              departureValid =
                                  departureKey.currentState?.validate();
                            });
                          },
                          validator: (p0) {
                            final emailState = Validator.validateText(
                                departureKey.currentState?.value, "Departure");
                            return emailState;
                          },
                          textFieldkey: departureKey),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: InputFieldWidget(
                          label: "Return",
                          labelFontSize: 12,
                          hintColor: const Color(0xff87898E),
                          hintText: "Imo",
                          verticalContentPadding: 5,
                          enabledBorderRadius: 10,
                          onChanged: (val) {
                            setState(() {
                              returnIsValid =
                                  returnKey.currentState?.validate();
                            });
                          },
                          validator: (p0) {
                            final emailState = Validator.validateText(
                                returnKey.currentState?.value, "Return");
                            return emailState;
                          },
                          textFieldkey: returnKey),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ActionButtonOrange(
                  onTap: () {},
                  label: "Search",
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Available Flights',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    TextWidget(
                      text: 'See All',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColors.orange,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.ticket);
                  },
                  child: const AvailableFlightCard(
                    from: 'ABJ',
                    to: 'PH',
                    amount: '#150, 000',
                    startTime: '11:30',
                    stopTime: '12:10',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const AvailableFlightCard(
                  from: 'ABJ',
                  to: 'PH',
                  amount: '#150, 000',
                  startTime: '11:30',
                  stopTime: '12:10',
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
