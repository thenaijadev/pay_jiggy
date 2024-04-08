import 'package:flutter/material.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/widgets/error_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/accout_created_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/biometrics_setup_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/change_password.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/create_pin_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/forgot_password_email_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/forgot_password_otp_verification.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/forgot_password_phonenumber_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/login_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/otp_verification_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/phone_number_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/set_password_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:pay_jiggy/features/home/presentation/screens/home_screen.dart';
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
      case Routes.phoneNumber:
        return MaterialPageRoute(
          builder: (_) => const PhoneNumberScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.setPassword:
        return MaterialPageRoute(
          builder: (_) => const SetPasswordScreen(),
        );
      case Routes.accountCreated:
        return MaterialPageRoute(
          builder: (_) => const AccountCreatedScreen(),
        );
      case Routes.createPin:
        return MaterialPageRoute(
          builder: (_) => const CreatePinScreen(),
        );
      case Routes.biometricsSetUp:
        return MaterialPageRoute(
          builder: (_) => const BiometricsSetupScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case Routes.forgotPasswordEmail:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordEmailScreen(),
        );
      case Routes.forgotPasswordOtpVerification:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordOtpVerificationScreen(),
        );
      case Routes.forgotPasswordPhoneNumber:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordPhoneNumberScreen(),
        );
      case Routes.changePassword:
        return MaterialPageRoute(
          builder: (_) => const ChangePasswordScreen(),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
