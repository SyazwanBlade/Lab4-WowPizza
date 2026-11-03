import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab4_ci/main.dart';
import 'package:lab4_ci/menu_card.dart';

void main() {
  testWidgets('Home page shows name and three outlined buttons', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('WOW Pizza'), findsOneWidget);
    expect(find.byType(OutlinedButton), findsNWidgets(3));
    expect(find.byIcon(Icons.facebook), findsOneWidget);
    expect(find.byIcon(Icons.close), findsOneWidget);
  });

  testWidgets('Menu button navigates to menu page', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Menu'));
    await tester.pumpAndSettle();

    expect(find.byType(MenuCard), findsNWidgets(3));
    expect(find.text('Nasi Lemak'), findsOneWidget);
    expect(find.text('RM 6.50'), findsOneWidget);
  });
}
