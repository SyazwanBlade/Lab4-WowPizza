import 'package:flutter_test/flutter_test.dart';
import 'package:lab4_ci/main.dart';
import 'package:lab4_ci/menu_card.dart';

void main() {
  testWidgets('Menu page shows menu cards', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(MenuCard), findsNWidgets(3));
    expect(find.text('Nasi Lemak'), findsOneWidget);
    expect(find.text('RM 6.50'), findsOneWidget);
  });
}
