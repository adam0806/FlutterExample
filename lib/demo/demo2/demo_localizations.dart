import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class DemoLocalizations{
  final Locale locale;

  DemoLocalizations(this.locale);

  static DemoLocalizations of(BuildContext context){
    return Localizations.of<DemoLocalizations>(
        context,
        DemoLocalizations
    );
  }
  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title':'hello',
    },
    'zh': {
      'title':'你好',
    },
  };

  String get title{
    return _localized[locale.languageCode]['title'];
  }
}

class DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocalizations>{
  DemoLocalizationsDelegate();

  @override
  Future<DemoLocalizations> load(Locale locale) {
    return SynchronousFuture<DemoLocalizations>(
      DemoLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<DemoLocalizations> old) {
    return false;
  }
}