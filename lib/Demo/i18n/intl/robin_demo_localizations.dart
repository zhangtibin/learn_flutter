import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'robin_demo_messages_all.dart';

class RobinDemoLocalizations {
  static RobinDemoLocalizations of(BuildContext context) {
    return Localizations.of<RobinDemoLocalizations>(
      context,
      RobinDemoLocalizations,
    );
  }

  static Future<RobinDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return RobinDemoLocalizations();
    });
  }

  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations',
      );
  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone',
        args: [name],
      );
}

class RobinDemoLocalizationsDelegate
    extends LocalizationsDelegate<RobinDemoLocalizations> {
  RobinDemoLocalizationsDelegate();

  @override
  Future<RobinDemoLocalizations> load(Locale locale) {
    return RobinDemoLocalizations.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<RobinDemoLocalizations> old) {
    return false;
  }
}
