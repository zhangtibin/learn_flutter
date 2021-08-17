//
//  TabBarPageFirst
//  learn_flutter
//
//  Created by zhangtibin on 2021/8/17.
//  Copyright © 2020 PnR Data Service Co.,Ltd. All rights reserved.
//

import 'package:flutter/material.dart';

class TabBarPageFirst extends StatefulWidget {
  @override
  _TabBarPageFirstState createState() => _TabBarPageFirstState();
}

/*
* 继承（关键字 extends）、混入 mixins （关键字 with）、接口实现（关键字 implements）
* AutomaticKeepAliveClientMixin可以防止tab页面切换后被重置
* */
class _TabBarPageFirstState extends State<TabBarPageFirst>
    with AutomaticKeepAliveClientMixin {
  final _suggestions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildRow(String pair) {
    return ListTile(
      onTap: () {},
      onLongPress: () {},
      title: Text(
        pair,
        style: _biggerFont,
      ),
    );
  }

  generateWordPairs() {
    return [
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444"
    ];
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs());
          }
          return _buildRow(_suggestions[index]);
        });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _buildSuggestions();
  }
}
