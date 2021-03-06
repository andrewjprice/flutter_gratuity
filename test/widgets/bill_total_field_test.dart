import 'package:gratuity/index.dart';

void main() {
  group('bill total field', () {
    testWidgets('can enter total', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: ChangeNotifierProvider<AppState>(
                  create: (context) => AppState(),
                  child: Builder(builder: (context) {
                    return BillTotalField();
                  })))));
      await tester.enterText(find.byKey(Key('billTotalTextField')), '100');
    });
  });
}
