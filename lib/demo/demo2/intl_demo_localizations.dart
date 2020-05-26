import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'adam_intl_demomessages_all.dart';

//terminal 指令可翻譯出.arb
//flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/demo/demo2 lib/demo/demo2/intl_demo_localizations.dart

//從arb文件轉出dart文件
//flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/demo/demo2 --generated-file-prefix=adam_intl_demo --no-use-deferred-loading lib/demo/demo2/intl_demo_localizations.dart lib/demo/demo2/intl_messages.arb
//flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/demo/demo2 --generated-file-prefix=adam_intl_demo --no-use-deferred-loading lib/demo/demo2/intl_demo_localizations.dart lib/demo/demo2/intl_en.arb
class IntlDemoLocalizations{
  static IntlDemoLocalizations of(BuildContext context){
    return Localizations.of<IntlDemoLocalizations>(
        context,
        IntlDemoLocalizations
    );
  }
  static Future<IntlDemoLocalizations> load(Locale locale){
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _){
      Intl.defaultLocale = localeName;
      return IntlDemoLocalizations();
    });
  }

  String get title => Intl.message(
    'hello',
    name: 'title',
    desc: 'demo localizations.',
  );

  String greet(String name) => Intl.message(
    'hello $name',
    name: 'greet',
    desc: 'greet someone.',
    args: [name],
  );


}
class IntlDemoLocalizationsDelegate extends LocalizationsDelegate<IntlDemoLocalizations>{
  IntlDemoLocalizationsDelegate();

  @override
  Future<IntlDemoLocalizations> load(Locale locale) {
    return IntlDemoLocalizations.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<IntlDemoLocalizations> old) {
    return false;
  }
}