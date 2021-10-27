import 'package:flutter/material.dart';
import 'package:ubenwa_coding_test/auth/login_page.dart';
import 'package:ubenwa_coding_test/auth/phone_auth.dart';
import 'package:ubenwa_coding_test/auth/signup.dart';
import 'package:ubenwa_coding_test/auth/verification_page.dart';
import 'package:ubenwa_coding_test/onboarding/onboarding.dart';


class Routes {
  /// ++++++++++++++++++++++++++++
  /// Navigation Urls
  /// ++++++++++++++++++++++++++++

  static const String signup = '/signup';
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
  static const String phoneAuth = '/phoneAuth';
  static const String verification = '/verification';



  /// ++++++++++++++++++++++++++++
  /// All routes for main.dart
  /// ++++++++++++++++++++++++++++

  static final Map<String, WidgetBuilder> routes = {
    Routes.onBoarding: (context) => OnBoarding(),
    Routes.signup: (context) => SignUp(),
    Routes.login: (context) => LoginPage(),
    Routes.phoneAuth: (context) => PhoneAuth(),
    Routes.verification: (context) => VerificationPage(),





  };
}
