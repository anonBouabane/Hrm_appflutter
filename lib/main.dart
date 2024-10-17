import 'package:flutter/material.dart';
import 'package:hrm/Route/route_helper.dart';
import 'package:hrm/theme/theme.dart';
import 'package:hrm/view/screen/auth/login_screen.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: NavigationService.navigationKey,
        onGenerateRoute: RouteHelper.generateRoute,
        theme: AppTheme.appThemedarkMode,
        title: 'HRM',
        debugShowCheckedModeBanner: false,
        home: const LoginScreen());
  }
}
