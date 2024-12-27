import 'package:app_dev_final_exam/auth/google_sign_in_screen.dart';
import 'package:app_dev_final_exam/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          title: 'Firebase App',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: GoogleSignInScreen(redirect: (String screen)=>{}))
        );

    await expectLater(find.byType(GoogleSignInScreen),
        matchesGoldenFile('main.png'));
  });
}