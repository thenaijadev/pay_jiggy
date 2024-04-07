import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/onboarding/widgets/next_button_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  late GlobalKey<FormFieldState> nameKey_1;
  late GlobalKey<FormFieldState> nameKey_2;
  late GlobalKey<FormFieldState> nameKey_3;

  bool showPassword = false;
  bool? nameOneIsValid;
  bool? nameTwoIsValid;

  @override
  void initState() {
    nameKey_1 = GlobalKey<FormFieldState>();
    nameKey_2 = GlobalKey<FormFieldState>();
    nameKey_3 = GlobalKey<FormFieldState>();

    super.initState();
  }

  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900, 1),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        print(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.primary,
      appBar: AppBar(
        backgroundColor: theme.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                text: "Sign Up",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 40,
              ),
              const TextWidget(text: "Now lets get to know more about you !"),
              const SizedBox(
                height: 40,
              ),
              InputFieldWidget(
                  hintColor: const Color(0xff87898E),
                  hintText: "First name",
                  verticalContentPadding: 5,
                  enabledBorderRadius: 10,
                  labelFontSize: 12,
                  label: "First name",
                  onChanged: (val) {
                    setState(() {
                      nameOneIsValid = nameKey_1.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final emailState = Validator.validateText(
                        nameKey_1.currentState?.value, "first name");
                    return emailState;
                  },
                  textFieldkey: nameKey_1),
              const SizedBox(
                height: 20,
              ),
              InputFieldWidget(
                  hintColor: const Color(0xff87898E),
                  hintText: "Last name",
                  verticalContentPadding: 5,
                  label: "Last name",
                  labelFontSize: 12,
                  enabledBorderRadius: 10,
                  onChanged: (val) {
                    setState(() {
                      nameOneIsValid = nameKey_2.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final emailState = Validator.validateText(
                        nameKey_2.currentState?.value, "last name");
                    return emailState;
                  },
                  textFieldkey: nameKey_2),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  GestureDetector(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: InputFieldWidget(
                        hintColor: const Color(0xff87898E),
                        hintText: "",
                        verticalContentPadding: 5,
                        label: "Date Of Birth",
                        labelFontSize: 12,
                        enabledBorderRadius: 10,
                        prefixicon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                const TextWidget(
                                  text: "YYYY-MM-DD",
                                  color: Color(0xff87898E),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset("assets/images/line_vert.png")
                              ],
                            )
                          ],
                        ),
                        onChanged: (val) {},
                        validator: (p0) {
                          final emailState = Validator.validateText(
                              nameKey_3.currentState?.value, "last name");
                          return emailState;
                        },
                        textFieldkey: nameKey_3),
                  ),
                  if (selectedDate == null)
                    Positioned(
                      top: 25,
                      right: 15,
                      child: CupertinoButton(
                        child: const Text('Select Date'),
                        onPressed: () => _selectDate(context),
                      ),
                    ),
                  if (selectedDate != null)
                    Positioned(
                        top: 33,
                        right: 25,
                        child: GestureDetector(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: TextWidget(
                              color: AppColors.orange,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              text: selectedDate.toString().split(" ")[0]),
                        ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ActionButton(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.setPassword);
                    },
                    label: "Continue",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
