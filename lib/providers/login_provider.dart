import 'package:flutter/material.dart';
import 'package:railplot/home.dart';
import 'package:railplot/models/auth_storage.dart';
import 'package:railplot/models/user_api.dart';

class LoginData extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool isLoading = false;
  String? _error;
  bool _showMenu = false;

  bool get isLoggedIn => _isLoggedIn;
  String? get error => _error;
  bool get showMenu => _showMenu;

  void setLoggedIn(bool value) {
    _isLoggedIn = value;

    notifyListeners();
  }

  void setError(String? value) {
    _error = value;
    notifyListeners();
  }

  void setLoggedOut() {
    _isLoggedIn = false;
    notifyListeners();
  }

  Future<void> loading(BuildContext context) async {
    isLoading = true;
    notifyListeners();

    isLoading = false;
    notifyListeners();
  }

  Future<void> loginUser(
    BuildContext context,
    String userName,
    String password,
  ) async {
    isLoading = true;
    notifyListeners();
    setError(null);

    try {
      final user = await UserApi.fetchUsers(userName, password);

      if (user) {
        setLoggedIn(true);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Home()),
        );
      } else {
        setError('invalid credentials');
      }
    } catch (e) {
      setError('Something went wrong');
      print("ERROR: $e");
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> initAuth() async {
    final token = await AuthStorage().getToken();

    _isLoggedIn = token != null && token.isNotEmpty;
    notifyListeners();
  }

  void toggleMenu() {
    _showMenu = !_showMenu;
    notifyListeners();
  }

  void closeMenu() {
    _showMenu = false;
    notifyListeners();
  }
}
