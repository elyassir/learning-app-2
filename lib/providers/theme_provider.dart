import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider(this._themeData);

  ThemeData get theme => _themeData;

  void updateTheme(ColorScheme colorScheme) {
    _themeData = ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
    );
    notifyListeners();
  }
}
