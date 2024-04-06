import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/error_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/login_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/otp_verification_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/signup_screen.dart';
import 'package:pay_jiggy/features/onboarding/screens/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.landing:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const OtpVerificationScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
