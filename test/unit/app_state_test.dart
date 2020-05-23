import 'package:gratuity/app_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppState', () {
    AppState appState = AppState();

    test('setTotal', () {
      appState.setTotal(100.0);
      expect(appState.total, 100.0);
    });
    
    test('setCustomTip', () {
      appState.setCustomTip(10.0);
      expect(appState.tip, 0.1);
    });

    test('setTip', () {
      appState.setTip(.1, '10');
      expect(appState.tip, 0.1);
      expect(appState.toggle, '10');
      appState.setTip(.1, '10');
      expect(appState.tip, 0.0);
      expect(appState.toggle, '');
    });

    test('increaseSplit', () {
      appState.increaseSplit(1);
      expect(appState.split, 2);
    });

    test('decreaseSplit', () {
      appState.decreaseSplit(1);
      expect(appState.split, 1);
    });

    test('calculate', () {
      appState.calculate();
      expect(appState.totalDisplay, '\$100.00');
      expect(appState.tipDisplay, '\$0.00');
      expect(appState.billDisplay, '\$100.00');
    });
  });
}