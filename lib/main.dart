import 'package:flutter/material.dart';
import 'package:learn_flutter/Demo/animation/animation_demo.dart';
import 'package:learn_flutter/Demo/bloc/bloc_demo.dart';
import 'package:learn_flutter/Demo/home_page.dart';
import 'package:learn_flutter/Demo/http/http_demo.dart';
import 'package:learn_flutter/Demo/i18n/i18n_demo.dart';
import 'package:learn_flutter/Demo/i18n/intl/robin_demo_localizations.dart';
import 'package:learn_flutter/Demo/rxdart/rxdart_demo.dart';
import 'package:learn_flutter/Demo/state/state_management_demo.dart';
import 'package:learn_flutter/Demo/stream/stream_demo.dart';
import 'Demo/navigator_demo.dart';
import 'Demo/form_demo.dart';
import 'Demo/material_components.dart';
import 'Demo/about_page_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Demo/tab/ZTBTabDemo.dart';

void main() {
  // runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('zh', 'CN'),
      localizationsDelegates: [
        RobinDemoLocalizationsDelegate(),
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: false,
      // home: Home(),
      // home: SliverDemo(),
      // home: NavigatorDemo(),
      // initialRoute: '/about',
      initialRoute: '/', //标识跟路由
      routes: {
        //路由
        '/': (context) => NavigatorDemo(),
        // '/': (context) => HomePageDemo(),
        '/home': (context) => HomePageDemo(),
        '/about': (context) => AbountPageDemo(),
        '/form': (context) => FormDemo(),
        '/material': (context) => MaterialComponentDemo(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo(),
        '/tab': (context) => ZTBTabDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
      // accentColor: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}
