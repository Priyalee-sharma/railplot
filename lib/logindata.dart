import 'package:flutter/material.dart';

class LoginData extends ChangeNotifier {
  String? _userName = '';
  String? _password = '';
  bool isLoginFailed = false;

  String? getName() => _userName;
  String? getPass() => _password;
  bool getError() => isLoginFailed;

  void setName(String name) {
    _userName = name;
    notifyListeners();
  }

  void setPass(String pass) {
    _password = pass;
    notifyListeners();
  }

  void setError() {
    if (_userName == 'priyalee' && _password == '12345') {
      isLoginFailed = false;
    } else {
      isLoginFailed = true;
    }
    notifyListeners();
  }
}
