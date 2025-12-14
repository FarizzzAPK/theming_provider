import 'package:flutter/material.dart';

class ThemingProvider with ChangeNotifier{
  ThemeMode  _currentTheme = ThemeMode.light;
  ThemeMode get currentTheme => _currentTheme;
  void switchTheme(){
    _currentTheme =
        _currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}