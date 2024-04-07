import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/bioButton.dart';

class BiometricsSetupScreen extends StatefulWidget {
  const BiometricsSetupScreen({super.key});

  @override
  State<BiometricsSetupScreen> createState() => _BiometricsSetupScreenState();
}

class _BiometricsSetupScreenState extends State<BiometricsSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          height: 495,
          width: 330,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidget(
                text: "BIOMETRICS",
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              Image.asset("assets/images/biometrics.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BioScreenbtn(
                    onTap: () {},
                    label: "Set up",
                  ),
                  BioScreenbtn(
                    label: "Later",
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.login);
                    },
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
