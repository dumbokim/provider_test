import 'package:flutter/material.dart';

class CountController extends ChangeNotifier {
  int count = 10;
  void increase() {
    count++;
    notifyListeners();
  }
}
