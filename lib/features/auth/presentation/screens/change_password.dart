import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/action_button_long.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final formKey = GlobalKey<FormState>();
  late GlobalKey<FormFieldState> passwordKey_1;
  late GlobalKey<FormFieldState> passwordKey_2;

  bool showPassword = false;
  bool? passwordOneIsvalid;
  bool? passwordTwoIsvalid;

  @override
  void initState() {
    passwordKey_1 = GlobalKey<FormFieldState>();
    passwordKey_2 = GlobalKey<FormFieldState>();

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
                text: "Forgot password",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(
                  text:
                      "We need an email to send OTP code for password recovery"),
              const SizedBox(
                height: 40,
              ),
              Image.asset("assets/images/forgot_password.png"),
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
                  hintText: "Enter your new password",
                  prefixicon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xff87898E),
                  ),
                  onChanged: (val) {
                    setState(() {
                      passwordOneIsvalid =
                          passwordKey_1.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final passwordState = Validator.validatePassword(
                      passwordKey_1.currentState?.value,
                    );
                    return passwordState;
                  },
                  textFieldkey: passwordKey_1),
              const SizedBox(
                height: 30,
              ),
              InputFieldWidget(
                  enabledBorderRadius: 10,
                  obscureText: !showPassword,
                  label: "Re-enter new password",
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
                      passwordTwoIsvalid =
                          passwordKey_2.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final passwordState = Validator.validateConfirmPassword(
                      firstPassword: passwordKey_1.currentState?.value,
                      value: passwordKey_2.currentState?.value,
                    );
                    return passwordState;
                  },
                  textFieldkey: passwordKey_2),
              const SizedBox(
                height: 20,
              ),
              ActionButtonLong(
                  label: "Save Password",
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
