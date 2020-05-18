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
    notifyListeners();
  }

  void setTip(double tip) {
    _tip = tip;
    notifyListeners();
  }

  void setSplit(int split) {
    _split = split;
    notifyListeners();
  }

  double get total => _total;
  double get tip => _tip;
  int get split => _split;
  String get totalDisplay => _totalDisplay;
  String get billDisplay => _billDisplay;
  String get tipDisplay => _tipDisplay;
}