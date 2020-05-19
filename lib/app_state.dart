import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  AppState();
  double _total = 0.0;
  double _tip = 0.0;
  int _split = 1;
  String _totalDisplay = "\$0.00";
  String _billDisplay = "\$0.00";
  String _tipDisplay = "\$0.00";

  void setTotal(double total) {
    _total = total;
    calculate();
    notifyListeners();
  }

  void setTip(double tip) {
    _tip = tip;
    calculate();
    notifyListeners();
  }

  void increaseSplit(int i) {
    _split += i;
    calculate();
    notifyListeners();
  }

  void decreaseSplit(int i) {
    if (_split - i > 0) {
        _split -= i;
    }
    calculate();
    notifyListeners();
  }

  double get total => _total;
  double get tip => _tip;
  int get split => _split;
  String get totalDisplay => _totalDisplay;
  String get billDisplay => _billDisplay;
  String get tipDisplay => _tipDisplay;
  
  void calculate() {
    var total = (_total + (_total * _tip)) / _split;
    var tip = (_total / _split) * _tip;
    var bill = total - tip;
    _totalDisplay = '\$${total.toStringAsFixed(2)}';
    _tipDisplay = '\$${tip.toStringAsFixed(2)}';
    _billDisplay = '\$${bill.toStringAsFixed(2)}';
  }
}