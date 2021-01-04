import 'package:flutter/material.dart';

import 'package:learn_flutter/Demo/page_view_demo.dart';
import 'package:learn_flutter/Demo/page_view_demo.dart';
import 'package:learn_flutter/Demo/page_item_builder_demo.dart_page.dart';
import 'package:learn_flutter/Demo/grid_view_count_demo.dart';
import 'package:learn_flutter/Demo/sliver_list_demo.dart';
import 'package:learn_flutter/Demo/list_view_demo.dart';
import 'package:learn_flutter/Demo/hello.dart';
import 'package:learn_flutter/Demo/drawer_demo.dart';
import 'package:learn_flutter/Demo/bottom_navigation_bar_demo.dart';
import 'package:learn_flutter/Demo/basic_demo.dart';
import 'package:learn_flutter/Demo/layout_demo.dart';
import 'package:learn_flutter/Demo/view_demo.dart';
import 'package:learn_flutter/Demo/sliver_demo.dart';

class HomePageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 9,
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
                  // onPressed: () => debugPrint('Search button is pressed'))
                  onPressed: ()=>debugPrint('search button is press')
              )
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
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.view_quilt)),
                  Tab(icon: Icon(Icons.slow_motion_video)),
                  Tab(icon: Icon(Icons.pages_rounded)),
                  Tab(icon: Icon(Icons.pages_sharp)),
                  Tab(icon: Icon(Icons.grid_off_rounded)),
                  Tab(icon: Icon(Icons.grid_off_sharp)),
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

            ViewDemo(),

            SliverDemo(),

            PageViewDemo(),

            PageItemBuilderDemo(),

            GridViewCountDemo(),

            SliverListDemo(),
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
