import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab4_ci/main.dart';
import 'package:lab4_ci/menu_card.dart';

void main() {
  // Tall viewport so the whole home page and menu list are built.
  void useTallScreen(WidgetTester tester) {
    tester.view.physicalSize = const Size(800, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);
  }

  testWidgets('Home page shows name and three outlined buttons', (
    WidgetTester tester,
  ) async {
    useTallScreen(tester);
    await tester.pumpWidget(const MyApp());

    expect(find.text('WOW Pizza'), findsOneWidget);
    expect(find.byType(OutlinedButton), findsNWidgets(3));
    expect(find.byIcon(Icons.facebook), findsOneWidget);
    expect(find.byIcon(Icons.close), findsOneWidget);
  });

  testWidgets('Menu button opens menu page', (WidgetTester tester) async {
    useTallScreen(tester);
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Menu'));
    await tester.pumpAndSettle();

    expect(find.byType(MenuCard), findsNWidgets(4));
    expect(find.text('Margherita'), findsOneWidget);
    expect(find.text('RM 14.90'), findsOneWidget);
  });

  testWidgets('About Us button opens about page', (WidgetTester tester) async {
    useTallScreen(tester);
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('About Us'));
    await tester.pumpAndSettle();

    expect(find.text('OUR STORY'), findsOneWidget);
  });

  testWidgets('Contact button opens contact page', (WidgetTester tester) async {
    useTallScreen(tester);
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Contact'));
    await tester.pumpAndSettle();

    expect(find.text('Contact WOW Pizza'), findsOneWidget);
  });

  testWidgets('Facebook icon opens facebook page', (WidgetTester tester) async {
    useTallScreen(tester);
    // Tests default to Android, where a real WebView would be created.
    debugDefaultTargetPlatformOverride = TargetPlatform.windows;
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.facebook));
    await tester.pumpAndSettle();

    expect(find.text('Facebook'), findsWidgets);
    debugDefaultTargetPlatformOverride = null;
  });
}
