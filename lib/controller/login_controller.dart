import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  String id = '';
  String pwd = '';

  login() {}

  void increase() {
    print(id);
    print(pwd);
    notifyListeners();
  }
}
