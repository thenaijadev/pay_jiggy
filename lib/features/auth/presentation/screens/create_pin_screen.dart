import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/action_button_long.dart';

class CreatePinScreen extends StatefulWidget {
  const CreatePinScreen({
    super.key,
  });
  // final List data;
  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {
  bool canResendCode = false;
  String otp = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.orange,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                const Center(
                  child: TextWidget(
                    text: "Create Transaction Pin",
                    textAlign: TextAlign.center,
                    color: AppColors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(
                    textAlign: TextAlign.center,
                    fontSize: 18,
                    text:
                        "Transaction pin is a four (4) digit number, required for transactions"),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: TextWidget(
                    text: "New Pin",
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 35, 35, 35)
                              .withOpacity(0.3), // Adjust color and opacity
                          spreadRadius: 0.0, // Adjust blur radius
                          blurRadius: 5.0, // Adjust shadow spread
                          offset: const Offset(1, 2), // Adjust shadow position
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0)),
                  child: OTPTextField(
                    outlineBorderRadius: 0,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 90,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.box,
                    onChanged: (val) {
                      otp = val;
                      debugPrint(val);
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ActionButtonLong(
                    label: "Create Pin",
                    onTap: () {
                      Navigator.pushNamed(context, Routes.biometricsSetUp);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
