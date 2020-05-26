import 'package:flutter/material.dart';
import 'demo_localizations.dart';
import 'intl_demo_localizations.dart';

class I18nDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${locale.languageCode}'),
            Text(locale.toString()),
            Text(
//              Localizations.of(context, DemoLocalizations).title,
//              DemoLocalizations.of(context).title,//main.dart裡的localizationsDelegates要配對應才能
              IntlDemoLocalizations.of(context).greet('Adam'),
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      ),
    );
  }
}
