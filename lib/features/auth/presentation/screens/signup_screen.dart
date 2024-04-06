import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/change_country.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/onboarding/widgets/next_button_widget.dart';

import '../../../../core/validator/validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final formfieldkey_1 = GlobalKey<FormFieldState>();
  final formfieldkey_2 = GlobalKey<FormFieldState>();
  final formfieldkey_3 = GlobalKey<FormFieldState>();

  String city = "";
  late TextEditingController cityController;
  bool? emailState = false;
  bool? addressState = false;
  bool enabled = false;
  bool obscureText = false;
  String? countryFlag = "🇳🇬";
  bool? phoneNumberHasError = false;
  String? choice;
  String countryCode = "234";
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
              const Row(
                children: [
                  TextWidget(text: "Enter your "),
                  TextWidget(
                    text: "phone number",
                    textDecoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(text: " below")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TextWidget(
                  text:
                      "We will send a 4 digit verification code to verify your phone number."),
              Padding(
                padding: const EdgeInsets.only(top: 67.0, bottom: 47),
                child: InputFieldWidget(
                  enabledBorderRadius: 10,
                  hintColor: const Color(0xff12121D),
                  prefixicon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              changeCountry(context, (Country country) {
                                setState(() {
                                  countryFlag = country.flagEmoji;
                                  countryCode = country.phoneCode;
                                });
                              });
                            },
                            child: TextWidget(
                              text: countryFlag!,
                              fontSize: 20,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset("assets/images/line_vert.png"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  obscureText: obscureText,
                  textFieldkey: formfieldkey_3,
                  label: "Phone number",
                  hintText: "+$countryCode  Phone Number",
                  labelFontSize: 12,
                  hintSize: 16,
                  onChanged: (val) {
                    setState(() {
                      phoneNumberHasError =
                          formfieldkey_3.currentState?.validate();

                      formKey.currentState?.validate();
                    });
                  },
                  validator: (val) {
                    final passwordStatus = Validator.validatePhoneNumber(
                      formfieldkey_3.currentState?.value,
                    );
                    return passwordStatus;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ActionButton(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.otpVerification);
                    },
                    label: "Send OTP",
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
