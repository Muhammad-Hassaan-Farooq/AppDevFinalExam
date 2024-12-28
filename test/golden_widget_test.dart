import 'package:app_dev_final_exam/main.dart';
import 'package:app_dev_final_exam/q2/expense_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await loadAppFonts();
    await tester.pumpWidget(
        MaterialApp(
          title: 'Firebase App',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: ExpenseScreen())
        );

    await expectLater(find.byType(ExpenseScreen),
        matchesGoldenFile('ui_sc.png'));
  });
}