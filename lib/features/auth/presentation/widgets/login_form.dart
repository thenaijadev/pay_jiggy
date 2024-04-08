import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/login_button.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/trailing_login_form_widgets.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormFieldState> nameKey;
  late GlobalKey<FormFieldState> passwordKey;
  bool obscureText = true;
  bool? nameIsValid;
  bool? passwordIsValid;

  @override
  void initState() {
    nameKey = GlobalKey<FormFieldState>();
    passwordKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const TextWidget(
              text: "Welcome",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 20,
            ),
            const TextWidget(
              text: "Let's dive in",
              fontSize: 30,
              fontWeight: FontWeight.w500,
              letterSpacing: 5,
            ),
            InputFieldWidget(
                hintColor: const Color(0xff87898E),
                hintText: "First name",
                verticalContentPadding: 5,
                enabledBorderRadius: 10,
                prefixicon: const Icon(
                  Icons.person_outline,
                  color: Color(0xff87898E),
                ),
                onChanged: (val) {
                  setState(() {
                    nameIsValid = nameKey.currentState?.validate();
                  });
                },
                validator: (p0) {
                  final emailState = Validator.validateText(
                      nameKey.currentState?.value, "first name");
                  return emailState;
                },
                textFieldkey: nameKey),
            InputFieldWidget(
                enabledBorderRadius: 10,
                obscureText: obscureText,
                verticalContentPadding: 0,
                hintColor: const Color(0xff87898E),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: obscureText
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.forgotPassword);
                      },
                      child: const TextWidget(
                        text: "Forgot password?",
                        fontSize: 14,
                      ))
                ],
              ),
            ),
            LoginButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.home);
              },
            ),
            const TrailingLoginFormWidgets()
          ],
        ),
      ),
    );
  }
}
