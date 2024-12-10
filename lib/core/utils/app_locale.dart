import 'package:flutter/material.dart';

import '../shared_preference/app_prefs.dart';

class AppLocale extends ChangeNotifier {
  AppLocale(this.appPreferences) {
    _locale = Locale(appPreferences.getLocale());
  }

  Locale _locale = const Locale('ar');
  final AppPreferences appPreferences;

  Locale get locale => _locale;

  void changeLocale(String language) async {
    _locale = Locale(language);
    appPreferences.setLocale(language);
    notifyListeners();
  }
}
