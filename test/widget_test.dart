
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab4wowpizza/main.dart';

void main() {
  testWidgets('Wow Pizza app loads successfully',
          (WidgetTester tester) async {

        // Launch the Wow Pizza application
        await tester.pumpWidget(const MyApp());

        // Check that the application loads
        expect(find.byType(MaterialApp), findsOneWidget);
      });
}

