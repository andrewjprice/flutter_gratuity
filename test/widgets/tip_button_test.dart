import 'package:gratuity/index.dart';

void main() {
  group('tip button', () {
    testWidgets('can toggle', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: ChangeNotifierProvider<AppState>(
                  create: (context) => AppState(),
                  child: Builder(builder: (context) {
                    return TipButton(label: 'test');
                  })))));

      await tester.tap(find.byKey(Key('tipBtn')));
      await tester.pump();
    });
  });
}
