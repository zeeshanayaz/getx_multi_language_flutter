import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

const String prefSelectedLanguageCode = "SelectedLanguageCode";


setLocale(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(prefSelectedLanguageCode, languageCode);
}


Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(prefSelectedLanguageCode) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  return languageCode != null && languageCode.isNotEmpty
      ? Locale(languageCode, '')
      : Locale('en', 'US');
}