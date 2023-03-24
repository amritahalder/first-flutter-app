import 'package:flutter/material.dart';

class NameValue extends ChangeNotifier {
  String _name = "No data";

  String get name => _name;

  set name(String name) {
    _name = name;
    notifyListeners();
  }
}
