import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/onboarding/widgets/next_button_widget.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  late GlobalKey<FormFieldState> emailKey;
  late GlobalKey<FormFieldState> passwordKey;
  late GlobalKey<FormFieldState> nameKey_3;

  bool showPassword = false;
  bool? emailIsValid;
  bool? passwordIsValid;

  @override
  void initState() {
    emailKey = GlobalKey<FormFieldState>();
    passwordKey = GlobalKey<FormFieldState>();
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

  bool? checkBoxValue = false;

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
              const TextWidget(
                  text:
                      "We need an email for notifications and a password for login purpose."),
              const SizedBox(
                height: 40,
              ),
              InputFieldWidget(
                  hintColor: const Color(0xff87898E),
                  hintText: "johndoe@gmail.com",
                  verticalContentPadding: 5,
                  enabledBorderRadius: 10,
                  labelFontSize: 12,
                  label: "Email",
                  onChanged: (val) {
                    setState(() {
                      emailIsValid = emailKey.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final emailState = Validator.validateEmail(
                      emailKey.currentState?.value,
                    );
                    return emailState;
                  },
                  textFieldkey: emailKey),
              const SizedBox(
                height: 20,
              ),
              InputFieldWidget(
                  enabledBorderRadius: 10,
                  obscureText: !showPassword,
                  label: "Set a password",
                  labelFontSize: 12,
                  verticalContentPadding: 0,
                  hintColor: const Color(0xff87898E),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: showPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  hintText: "Enter your password",
                  prefixicon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xff87898E),
                  ),
                  onChanged: (val) {
                    setState(() {
                      passwordIsValid = passwordKey.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final passwordState = Validator.validatePassword(
                      passwordKey.currentState?.value,
                    );
                    return passwordState;
                  },
                  textFieldkey: passwordKey),
              const SizedBox(
                height: 20,
              ),
              Transform.translate(
                offset: const Offset(-10, 0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: .8,
                      child: Checkbox(
                          fillColor: MaterialStateProperty.all(Colors.white),
                          checkColor: Colors.black,
                          side: const BorderSide(width: 1, color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          value: checkBoxValue,
                          onChanged: (val) {
                            setState(() {
                              checkBoxValue = val;
                            });
                          }),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TextWidget(
                              text: "I agree to the Terms of service ",
                              fontSize: 12,
                            ),
                            TextWidget(
                              text: "Terms of service ",
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            TextWidget(
                              text: "and ",
                              fontSize: 12,
                            ),
                          ],
                        ),
                        TextWidget(
                          text: "Privacy Polixy ",
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ActionButton(
                    onTap: () {
                      // Navigator.of(context).pushNamed(Routes.otpVerification);
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
