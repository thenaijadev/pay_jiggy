import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  int _quantity = 2;

  late GlobalKey<FormFieldState> amountKey;
  late GlobalKey<FormFieldState> meterNumberKey;
  late GlobalKey<FormFieldState> fromKey;

  String? dropdownValue = 'Joint Admission and Matriculation Board (JAMB)';

  bool? amountIsValid;
  bool? meterNumberIsValid;

  @override
  void initState() {
    amountKey = GlobalKey<FormFieldState>();
    meterNumberKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Education',
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
                  child: Image.asset('assets/images/education.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextWidget(
                  text: "Exam Type",
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
                            'Joint Admission and Matriculation Board (JAMB)',
                            'West African Examination Council (WAEC)',
                            'National Examination Council (NECO)',
                            'National Business and Technical Examinations Board (NABTEB)',
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
                const TextWidget(
                  text: "Quantity",
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: _decrementQuantity,
                        color: AppColors.orange,
                      ),
                      Text('$_quantity'),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: _incrementQuantity,
                        color: AppColors.orange,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                InputFieldWidget(
                    label: "Amount",
                    labelFontSize: 12,
                    hintColor: const Color(0xff87898E),
                    hintText: "2000",
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
                        context, Routes.educationTransactionReview);
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
