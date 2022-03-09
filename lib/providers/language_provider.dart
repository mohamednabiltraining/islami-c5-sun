import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String code = "en";

  void changeLanguage(String newLangCode) {
    code = newLangCode;
    notifyListeners();
  }

  String getLangName() {
    return code == 'en' ? "English" : 'العربيه';
  }
}
