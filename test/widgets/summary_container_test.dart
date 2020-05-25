import 'package:gratuity/index.dart';

void main() {
  group('summary container', () {
    testWidgets('contains summary details', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: ChangeNotifierProvider<AppState>(
                  create: (context) => AppState(),
                  child: Builder(builder: (context) {
                    return SummaryContainer();
                  })))));

      expect(find.text('Total per person'), findsOneWidget);
      expect(find.text('bill'), findsOneWidget);
      expect(find.text('tip'), findsOneWidget);
      expect(find.text('\$0.00'), findsNWidgets(3));
    });
  });
}
