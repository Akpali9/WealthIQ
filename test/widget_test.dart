import 'package:flutter_test/flutter_test.dart';
import 'package:wealthiq/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const WealthIQ());

    expect(find.text('WealthIQ'), findsOneWidget);
  });
}
