import 'package:flutter/material.dart';

class PasswordProvider extends ChangeNotifier {
  bool _isHidden = true;
  bool get isHidden => _isHidden;
  void passwordVisibility() {
    _isHidden = !_isHidden;
    notifyListeners();
  }
}
