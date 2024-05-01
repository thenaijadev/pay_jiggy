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
import 'package:pay_jiggy/features/auth/presentation/screens/security_settings_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/set_password_screen.dart';
import 'package:pay_jiggy/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:pay_jiggy/features/contact_privacy_help_support/presentation/screens/contact_us.dart';
import 'package:pay_jiggy/features/contact_privacy_help_support/presentation/screens/help_and_support.dart';
import 'package:pay_jiggy/features/contact_privacy_help_support/presentation/screens/privacy_policy.dart';
import 'package:pay_jiggy/features/home/presentation/screens/home_screen.dart';
import 'package:pay_jiggy/features/notification/presentation/screens/notification_screen.dart';
import 'package:pay_jiggy/features/onboarding/screens/onboarding_screen.dart';
import 'package:pay_jiggy/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/airtime_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/airtime_to_cash_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/book_flight_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/cable_tv_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/education_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/electricity_bill_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/gift_card_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/mobile_data_screen.dart';
import 'package:pay_jiggy/features/services/presentation/screens/preview_airtime_to_cash_transaction.dart';
import 'package:pay_jiggy/features/services/presentation/screens/preview_airtime_transaction.dart';
import 'package:pay_jiggy/features/services/presentation/screens/preview_cable_tv.dart';
import 'package:pay_jiggy/features/services/presentation/screens/preview_education_transaction.dart';
import 'package:pay_jiggy/features/services/presentation/screens/preview_electricity_bill.dart';
import 'package:pay_jiggy/features/services/presentation/screens/preview_mobile_data_transaction.dart';
import 'package:pay_jiggy/features/services/presentation/screens/ticket_screen.dart';

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
      case Routes.notification:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        );
      case Routes.securitySetting:
        return MaterialPageRoute(
          builder: (_) => const SecuritySettingsScreen(),
        );
      case Routes.privacyPolicy:
        return MaterialPageRoute(
          builder: (_) => const PrivacyPolicyScreen(),
        );
      case Routes.helpAndSupport:
        return MaterialPageRoute(
          builder: (_) => const HelpAndSupportScreen(),
        );
      case Routes.contactUs:
        return MaterialPageRoute(
          builder: (_) => const ContactUsScreen(),
        );

      case Routes.mobileData:
        return MaterialPageRoute(
          builder: (_) => const MobileDataScreen(),
        );
      case Routes.dataTransactionReview:
        return MaterialPageRoute(
          builder: (_) => const PreviewDataTransactionScreen(),
        );
      case Routes.bookFlight:
        return MaterialPageRoute(
          builder: (_) => const BookFlightScreen(),
        );
      case Routes.ticket:
        return MaterialPageRoute(
          builder: (_) => const Ticket(),
        );
      case Routes.airtime:
        return MaterialPageRoute(
          builder: (_) => const AirtimeScreen(),
        );
      case Routes.airtimeTransactionReview:
        return MaterialPageRoute(
          builder: (_) => const PreviewAirtimeTransactionScreen(),
        );
      case Routes.cableTv:
        return MaterialPageRoute(
          builder: (_) => const CableTVScreen(),
        );
      case Routes.cableTvTransactionReview:
        return MaterialPageRoute(
          builder: (_) => const CableTvTransactionScreen(),
        );
      case Routes.electricityBill:
        return MaterialPageRoute(
          builder: (_) => const ElectricityBillScreen(),
        );
      case Routes.eletricityBillTransactionReview:
        return MaterialPageRoute(
          builder: (_) => const PreviewElectricityBillTransactionScreen(),
        );
      case Routes.education:
        return MaterialPageRoute(
          builder: (_) => const EducationScreen(),
        );
      case Routes.educationTransactionReview:
        return MaterialPageRoute(
          builder: (_) => const PreviewEducationTransactionScreen(),
        );
      case Routes.airtimeToCash:
        return MaterialPageRoute(
          builder: (_) => const AirtimeToCashScreen(),
        );
      case Routes.airtimeToCashTransactionReview:
        return MaterialPageRoute(
          builder: (_) => const PreviewAirtimeToCashTransactionScreen(),
        );
      case Routes.giftCard:
        return MaterialPageRoute(
          builder: (_) => const GiftCardScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
