import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  String getBackGroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/main_background_dark.png';
  }

  String getThemeName(BuildContext context) {
    return themeMode == ThemeMode.light
        ? AppLocalizations.of(context)!.light
        : AppLocalizations.of(context)!.dark;
  }
}
