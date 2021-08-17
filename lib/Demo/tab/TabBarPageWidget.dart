//
//  TabBarPageWidget
//  learn_flutter
//
//  Created by zhangtibin on 2021/8/17.
//  Copyright © 2020 PnR Data Service Co.,Ltd. All rights reserved.
//

import 'package:flutter/material.dart';

import 'TabBarPageFirst.dart';
import 'TabBarPageSecond.dart';
import 'TabBarPageThree.dart';
import 'ZTBTabBarWidget.dart';

class TabBarPageWidget extends StatefulWidget {
  @override
  _TabBarPageWidgetState createState() => _TabBarPageWidgetState();
}

class _TabBarPageWidgetState extends State<TabBarPageWidget> {
  final PageController topPageControl = PageController();
  final List<String> tab = [
    "顶部tab1",
    "顶部tab2",
    "顶部tab3",
    "顶部tab4",
    "顶部tab5",
    "顶部tab6",
  ];

  _renderTab() {
    List<Widget> list = List();
    for (int i = 0; i < tab.length; i++) {
      list.add(FlatButton(
          onPressed: () {
            topPageControl.jumpTo(MediaQuery.of(context).size.width * 1);
          },
          child: Text(
            tab[i],
            maxLines: 1,
          )));
    }
    return list;
  }

  _renderPage() {
    return [
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree(),
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree(),
    ];
  }



  @override
  Widget build(BuildContext context) {
    return ZTBTabBarWidget(
        type: ZTBTabBarWidget.TOP_TAB,
        tabItems: _renderTab(),
        tabViews: _renderPage(),
        topPageControl: topPageControl,
        backgroundColor: Colors.lightBlue,
        indicatorColor: Colors.white,
        title: new Text("Test"));
  }
}
