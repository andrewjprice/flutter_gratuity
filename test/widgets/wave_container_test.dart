import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gratuity/widgets/index.dart';

void main() {
  testWidgets('WaveContainer has a title', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: WaveContainer(title: 'Gratuity'))));

    final titleFinder = find.text('Gratuity');
    expect(titleFinder, findsOneWidget);
  });
}