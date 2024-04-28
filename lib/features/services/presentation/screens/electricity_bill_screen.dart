import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';

class ElectricityBillScreen extends StatefulWidget {
  const ElectricityBillScreen({super.key});

  @override
  State<ElectricityBillScreen> createState() => _ElectricityBillScreenState();
}

class _ElectricityBillScreenState extends State<ElectricityBillScreen> {
  late GlobalKey<FormFieldState> amountKey;
  late GlobalKey<FormFieldState> meterNumberKey;
  late GlobalKey<FormFieldState> fromKey;

  String? dropdownValue = 'Enugu Electric (EEDC)';

  bool? amountIsValid;
  bool? meterNumberIsValid;

  @override
  void initState() {
    amountKey = GlobalKey<FormFieldState>();
    meterNumberKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Electricity',
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset('assets/images/electricity_companies.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                InputFieldWidget(
                    label: "Meter Number",
                    labelFontSize: 12,
                    hintColor: const Color(0xff87898E),
                    hintText: "Meter Number",
                    verticalContentPadding: 5,
                    enabledBorderRadius: 10,
                    onChanged: (val) {
                      setState(() {
                        meterNumberIsValid =
                            meterNumberKey.currentState?.validate();
                      });
                    },
                    validator: (p0) {
                      final emailState = Validator.validateText(
                          meterNumberKey.currentState?.value, "Meter Number");
                      return emailState;
                    },
                    textFieldkey: meterNumberKey),
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(
                  text: "Service Provider",
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 46,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff87898E),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          value: dropdownValue, // currently selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>[
                            'Kano Electric (KEDCO)',
                            'Enugu Electric (EEDC)',
                            'Ikeja Electric Payment (IKEDI)',
                            'Benin Electricity (BEDC)',
                            'Eko Electric Payment (EEDC)',
                            'Port Harcourt Electric (PHED)',
                            'Ibadan Electricity Distribution Company (PHED)',
                            'Jos Electric (JED)',
                            'Abuja Electric Distribution Company (AEDC)',
                            'Yola Electric (YEDC)',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InputFieldWidget(
                    label: "Amount",
                    labelFontSize: 12,
                    hintColor: const Color(0xff87898E),
                    hintText: "120",
                    verticalContentPadding: 5,
                    enabledBorderRadius: 10,
                    onChanged: (val) {
                      setState(() {
                        amountIsValid = amountKey.currentState?.validate();
                      });
                    },
                    validator: (p0) {
                      final emailState = Validator.validateText(
                          amountKey.currentState?.value, "Amount");
                      return emailState;
                    },
                    textFieldkey: amountKey),
                const SizedBox(
                  height: 50,
                ),
                ActionButtonOrange(
                  onTap: () {
                    Navigator.pushNamed(
                        context, Routes.eletricityBillTransactionReview);
                  },
                  label: "Proceed",
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
