import 'package:gratuity/index.dart';

void main() {
  group('split field', () {
    testWidgets('increase and decrease number of splits', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: ChangeNotifierProvider<AppState>(
                  create: (context) => AppState(),
                  child: Builder(builder: (context) {
                    return SplitField();
                  })))));

      await tester.tap(find.byKey(Key('increaseBtn')));
      await tester.pump();
      expect(find.text('2'), findsOneWidget);

      await tester.tap(find.byKey(Key('decreaseBtn')));
      await tester.pump();
      expect(find.text('1'), findsOneWidget);
    });
  });
}
