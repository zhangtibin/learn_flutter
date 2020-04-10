import 'package:flutter/material.dart';
import 'Demo/list_view_demo.dart';
import 'Demo/hello.dart';
import 'Demo/drawer_demo.dart';
import 'Demo/bottom_navigation_bar_demo.dart';
import 'Demo/basic_demo.dart';
import 'Demo/layout_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // leading: IconButton(
            //     icon: Icon(Icons.menu),
            //     tooltip: 'Navigation',
            //     onPressed: () => debugPrint('Navigation Button is pressed')
            //     ),
            title: Text('首页'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('Search button is pressed'))
            ],
            elevation: 0.0, //阴影
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.history)),
                  Tab(icon: Icon(Icons.directions_bike))
                ]),
          ),
          // body: ListViewDemo()
          body: TabBarView(children: <Widget>[
            ListViewDemo(),
            // Icon(
            //   Icons.history,
            //   size: 128,
            //   color: Colors.black12,
            // ),
            BasicDemo(),
            // Icon(
            //   Icons.directions_bike,
            //   size: 128,
            //   color: Colors.black12,
            // ),
            LayoutDemo(),
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
