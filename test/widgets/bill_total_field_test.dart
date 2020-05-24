import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:gratuity/app_state.dart';
import 'package:gratuity/widgets/index.dart';

void main() {
  group('bill total field', () {
    testWidgets('has label', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: ChangeNotifierProvider<AppState>(
                  create: (context) => AppState(),
                  child: Builder(builder: (context) {
                    return BillTotalField();
                  })))));

      final label = find.text('Enter bill total');
      expect(label, findsOneWidget);
    });

    testWidgets('can enter amount', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: ChangeNotifierProvider<AppState>(
                  create: (context) => AppState(),
                  child: Builder(builder: (context) {
                    return BillTotalField();
                  })))));
      
      await tester.enterText(find.byType(TextField), '100');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump(Duration(milliseconds:400));
    });
  });
}
