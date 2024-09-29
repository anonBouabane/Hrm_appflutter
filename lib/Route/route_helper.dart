import 'package:flutter/material.dart';
import 'package:hrm/view/screen/auth/login_screen.dart';
import 'package:hrm/view/screen/auth/register_screen.dart';
import 'package:hrm/view/screen/dashboard/dashboard.dart';
import 'package:hrm/view/screen/profile/profile_screen.dart';
import 'package:hrm/view/screen/scaner/scaner_Screen.dart';

class RouteHelper {
  static const login = '/login';
  static const register = '/register';
  static const dashboard = '/dashboard';
  static const scaner = 'scaner';
  static const profile = 'profile';
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case dashboard:
        return MaterialPageRoute(
          builder: (context) => const DashBoardScreen(),
        );
      case scaner:
        return MaterialPageRoute(builder: (context) => const ScanerScreen());
      case profile:
        return MaterialPageRoute(builder: (context) => const Profile());

      default:
        throw const FormatException('route is not found');
    }
  }
}
