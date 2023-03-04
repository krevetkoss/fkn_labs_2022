import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeColor extends ChangeNotifier {
  Color _activColor = Colors.green;

  Color get activColor => _activColor;

  void setActivColor(Color newActivColor) {
    _activColor = newActivColor;
    notifyListeners();
  }
}
