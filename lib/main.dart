import 'package:flutter/material.dart';
import 'package:learn_flutter/Demo/home_page.dart';
import 'package:learn_flutter/Demo/state/state_management_demo.dart';
import 'Demo/navigator_demo.dart';
import 'Demo/form_demo.dart';
import 'Demo/material_components.dart';
import 'Demo/about_page_demo.dart';

void main() {
  // runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
