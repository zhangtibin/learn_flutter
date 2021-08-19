//
//  tab_segment_demo
//  learn_flutter
//
//  Created by zhangtibin on 2021/8/19.
//  Copyright © 2020 PnR Data Service Co.,Ltd. All rights reserved.
//


import 'package:flutter/material.dart';

class TabSegmentDemo extends StatefulWidget {
  @override
  _TabSegmentDemoState createState() => _TabSegmentDemoState();
}

class _TabSegmentDemoState extends State<TabSegmentDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var _currentIndex = 0;
  List<Tab> list1 = new List();
  List<Widget> list2 = new List();
  var tabTitle = ['首页', '分类', '购物车', '我的'];
  var tabIcon = [
    Icon(Icons.home),
    Icon(Icons.category),
    Icon(Icons.shopping_cart),
    Icon(Icons.perm_contact_calendar)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabTitle.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 4; i++) {
      list1.add(new Tab(
        text: tabTitle[i],
        icon: tabIcon[i],
      ));
      list2.add(new Column(
        children: <Widget>[
          tabIcon[i],
          Container(
            child: Text(tabTitle[i]),
            padding: EdgeInsets.only(top: 1.0),
          )
        ],
      ));
    }

    Widget _getTabBar(int index) {
      var tabbar = new TabBar(
        controller: _tabController,
        tabs: <Widget>[
          Column(
            children: <Widget>[
              Image(
                image: index == 0
                    ? AssetImage('images/home_selected.png')
                    : AssetImage('images/home.png'),
                width: 20,
                height: 20,
              ),
              Container(
                child: Text(tabTitle[0]),
                padding: EdgeInsets.only(top: 1),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image(
                image: index == 1
                    ? AssetImage('images/category_selected.png')
                    : AssetImage('images/category.png'),
                width: 20,
                height: 20,
              ),
              Container(
                child: Text(tabTitle[1]),
                padding: EdgeInsets.only(top: 1.0),
              ),
            ],
          ),
          Column(children: <Widget>[
            Image(
              image: index == 2
                  ? AssetImage('images/cart_selected.png')
                  : AssetImage('images/cart.png'),
              width: 20,
              height: 20,
            ),
            Container(
              child: Text(tabTitle[2]),
              padding: EdgeInsets.only(top: 1.0),
            )
          ]),
          Column(children: <Widget>[
            Image(
              image: index == 3
                  ? AssetImage('images/mine_selected.png')
                  : AssetImage('images/mine.png'),
              width: 20,
              height: 20,
            ),
            Container(
              child: Text(tabTitle[3]),
              padding: EdgeInsets.only(top: 1.0),
            )
          ]),
        ],
        labelColor: Colors.red,
        labelStyle: TextStyle(fontSize: 14),
        isScrollable: false,
        unselectedLabelColor: Colors.white,
        indicatorColor: Colors.purple,
      );
      return tabbar;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('tabBar'),
        bottom: _getTabBar(_currentIndex),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text(tabTitle[0])),
          Center(child: Text(tabTitle[1])),
          Center(child: Text(tabTitle[2])),
          Center(child: Text(tabTitle[3]))
        ],
      ),
    );
  }
}
