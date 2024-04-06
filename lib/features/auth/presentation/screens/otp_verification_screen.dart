import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/onboarding/widgets/next_button_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({
    super.key,
  });
  // final List data;
  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  String? otp;
  // Step 2
  Timer? countdownTimer;
  Duration myDuration = const Duration(minutes: 2);

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();

    setState(() {
      myDuration = const Duration(minutes: 2);
      canResendCode = false;
    });
  }

  // Step 6
  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
        canResendCode = true;
        stopTimer();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();

    super.initState();
  }

  @override
  void dispose() {
    countdownTimer?.cancel();
    super.dispose();
  }

  bool canResendCode = false;
  @override
  Widget build(BuildContext context) {
    // UserBloc userbloc = context.watch<UserBloc>();

    String strDigits(int n) => n.toString().padLeft(2, '0');

    final minutes = strDigits(myDuration.inMinutes);
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.orange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget(
              text: "Sign Up",
              color: AppColors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                TextWidget(text: "Enter the 4 digit "),
                TextWidget(
                  text: "verification code",
                  textDecoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(text: " sent to your phone.")
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: TextWidget(
                text: "Vertication Code",
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 35, 35, 35)
                      .withOpacity(0.3), // Adjust color and opacity
                  spreadRadius: 0.0, // Adjust blur radius
                  blurRadius: 5.0, // Adjust shadow spread
                  offset: const Offset(1, 2), // Adjust shadow position
                )
              ], color: Colors.white, borderRadius: BorderRadius.circular(0)),
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
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.restart_alt,
                          size: 18,
                          color:
                              canResendCode ? AppColors.black : Colors.black54),
                      TextButton(
                        onPressed: () {
                          if (canResendCode) {
                            resetTimer();
                            startTimer();
                            // String number = formatPhoneNumber(
                            //     widget.data[0], widget.data[1]);
                            // String newNumber = number.replaceAll("-", "");
                            // userbloc.add(UserEventGetOtp(
                            //   phone: newNumber,
                            // ));
                          }
                        },
                        child: TextWidget(
                            text: "Resend Code",
                            fontSize: 12,
                            fontWeight: canResendCode
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color:
                                canResendCode ? Colors.black : Colors.black54),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextWidget(
                        text: "$minutes:${seconds}s",
                        color: Colors.black,
                      ),
                      const TextWidget(
                        text: "  waiting time",
                        color: Color(0xff868FAE),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ActionButton(label: "Continue", onTap: () {}),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

String formatPhoneNumber(String number, String countryCode) {
  return "+$countryCode-${number.substring(1, 4)}-${number.substring(4, 7)}-${number.substring(7, number.length)}";
}
