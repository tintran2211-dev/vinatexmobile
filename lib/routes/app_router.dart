import 'package:flutter/material.dart';
import '../ui/login/signin/screens/login_screen.dart';
import '../ui/login/forgot_password/screens/forgot_password_screen.dart';
import '../ui/login/verify_reset_password/screens/verify_reset_password_screen.dart';
import '../main.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashToLogin());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/forgot-password':
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case '/verify-reset-password':
        return MaterialPageRoute(builder: (_) => const VerifyResetPasswordScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
