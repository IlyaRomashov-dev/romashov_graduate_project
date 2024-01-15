import 'package:flutter/material.dart';
import 'package:romashovsoft_enterprise_application/common/presentation/widgets/app_button.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              onPressed: () {},
              text: "Войти",
            ),
            AppButton.light(
              onPressed: () {},
              text: "Войти",
            ),
          ],
        ),
      ),
    );
  }
}
