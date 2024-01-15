import 'package:flutter/material.dart';
import 'package:romashovsoft_enterprise_application/features/authorization/presentation/authorization_screen.dart';
import 'package:romashovsoft_enterprise_application/features/home_page.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: AuthorizationScreen(),
    );
  }
}
