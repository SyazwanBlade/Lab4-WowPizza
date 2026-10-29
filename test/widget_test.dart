import 'package:flutter_test/flutter_test.dart';
import 'package:lab4_ci/main.dart';
import 'package:lab4_ci/menu_card.dart';

void main() {
  testWidgets('Menu page shows pizza cards and prices', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(MenuCard), findsNWidgets(4));
    expect(find.text('Margherita'), findsOneWidget);
    expect(find.text('Pepperoni Feast'), findsOneWidget);
    expect(find.text('RM 14.90'), findsOneWidget);
  });
}
