import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jmrs_app/main.dart';

void main() {
  testWidgets('To-Do List adds tasks correctly', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Check if "To-Do List" screen is visible
    expect(find.text("Enter task"), findsOneWidget);

    // Enter a task in the TextField
    await tester.enterText(find.byType(TextField), "Buy groceries");

    // Tap the "Add Task" button
    await tester.tap(find.text("Add Task"));
    await tester.pumpAndSettle();

    // Check if the new task appears in the list
    expect(find.text("Buy groceries"), findsOneWidget);
  });
}
