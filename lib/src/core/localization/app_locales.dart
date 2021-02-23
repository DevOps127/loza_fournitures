import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/all.dart';

abstract class AppLocaleProvider {
  static final provider =
      ChangeNotifierProvider<AppLocale>((ref) => AppLocale());
}

class AppLocale extends ChangeNotifier {
  Locale _locale;

  Locale get locale => _locale ?? Locale('fr');

  void changeLocale(Locale newLocale) {
    if (newLocale == Locale('fr')) {
      _locale = Locale('fr');
    } else {
      _locale = Locale('en');
    }
    notifyListeners();
  }
}
