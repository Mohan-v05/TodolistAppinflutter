import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  static const String _email = "A@gmail.com";
  static const String _password = "1234";

  void login(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      _errorMessage = "Email and password are required";
      notifyListeners();
      return;
    }

    if (email == _email && password == _password) {
      _isAuthenticated = true;
      _errorMessage = null;
    } else {
      _isAuthenticated = false;
      _errorMessage = "Invalid email or password";
    }
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}
