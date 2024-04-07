import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/action_button_long.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  State<ForgotPasswordEmailScreen> createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  final formKey = GlobalKey<FormState>();
  late GlobalKey<FormFieldState> emailKey;

  bool showPassword = false;
  bool? emailIsValid;

  @override
  void initState() {
    emailKey = GlobalKey<FormFieldState>();

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
              const SizedBox(
                height: 150,
              ),
              const TextWidget(
                text: "Forgot password",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 40,
              ),
              const TextWidget(
                  text:
                      "We need an email to send OTP code for password recovery"),
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
              ActionButtonLong(
                  label: "Request OTP",
                  onTap: () {
                    Navigator.pushNamed(
                        context, Routes.forgotPasswordOtpVerification);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
