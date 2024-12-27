import 'package:app_dev_final_exam/auth/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GoogleSignInScreen extends StatelessWidget {

  final Set<void> Function(String screen) redirect;

  const GoogleSignInScreen({required this.redirect, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () async {
          try {
            await AuthService().signInWithGoogle();
            redirect("Home");
          }
          catch (e) {
            print(e);
            redirect("Google");
          }
        }, child: const Text("Google Sign in")),
      ),
    );
  }
}