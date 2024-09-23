import 'package:flutter/material.dart';
import 'package:hrm/view/screen/auth/login_screen.dart';
import 'package:hrm/view/screen/auth/register_screen.dart';
import 'package:hrm/view/screen/dashboard/dashboard.dart';

class RouteHelper {
  static const login = '/login';
  static const register = '/register';
  static const dashboard = '/dashboard';
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
      default:
        throw const FormatException('route is not found');
    }
  }
}
