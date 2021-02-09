import 'package:flutter/material.dart';
import 'package:learn_flutter/Demo/i18n/intl/robin_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale local = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text('I18nDemo'), elevation: 0.0),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(local.toString()),
          Text(
            RobinDemoLocalizations.of(context).greet('hello'),
            style: Theme.of(context).textTheme.title,
          )
        ],
      )),
    );
  }
}
