//
//  ZTBTabDemo
//  learn_flutter
//
//  Created by zhangtibin on 2021/8/17.
//  Copyright © 2020 PnR Data Service Co.,Ltd. All rights reserved.
//

import 'package:flutter/material.dart';

import 'TabBarBottomPageWidget.dart';
import 'TabBarPageWidget.dart';


class ZTBTabDemo extends StatefulWidget {

  @override
  _ZTBTabDemoState createState() => _ZTBTabDemoState();
}

class _ZTBTabDemoState extends State<ZTBTabDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabDemo'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                print("点击了");
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new TabBarPageWidget()));
              },
              child: new Text("Top Tab")
          ),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new TabBarBottomPageWidget()));
              },
              child: new Text("Bottom Tab")
          ),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                showDialog(
                    context: context,
                    child: new SimpleDialog(
                      contentPadding: const EdgeInsets.all(10.0),
                      title: new Text("弹出框showDialog标题"),
                      children: <Widget>[new Text("我是内容")],
                    ));
              },
              child: new Text("测试showDialog")
          ),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                showDialog(
                    context: context,
                    child: new SimpleDialog(
                      contentPadding: const EdgeInsets.all(10.0),
                      title: new Text("我是标题"),
                      children: <Widget>[
                        new ListTile(
                          leading: new Icon(Icons.apps),
                          title: new Text("apps"),
                        ),
                        new ListTile(
                          leading: new Icon(Icons.android),
                          title: new Text("android"),
                        ),
                        new ListTile(
                          leading: new Icon(Icons.cake),
                          title: new Text("cake"),
                        ),
                        new ListTile(
                          leading: new Icon(Icons.local_cafe),
                          title: new Text("cofe"),
                        )
                      ],
                    ));
              },
              child: new Text("显示多个弹出框内容")
          ),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                showDialog(
                    context: context,
                    child: new AlertDialog(
                      title: new Text("alertDialog标题"),
                      content: new Text("alertDialog内容"),
                      actions: <Widget>[
                        new FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: new Text("确定"))
                      ],
                    ));
              },
              child: new Text("alertDialog控件")
          ),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => new AlertDialog(
                      title: new Text("标题"),
                      content: new Text("内容"),
                      actions: <Widget>[
                        new FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: new Text("取消")),
                        new FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: new Text("确定"))
                      ],
                    ));
              },
              child: new Text("alert弹框")
          ),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                showDialog(
                    context: context,
                    child: new AboutDialog(
                      applicationName: "1111",
                      applicationVersion: "1.0",
                      applicationIcon: new Icon(
                        Icons.android,
                        color: Colors.lightBlueAccent,
                      ),
                      children: <Widget>[
                        new Text("111111111111\n22222222222222\n3333333333")
                      ],
                    ));
              },
              child: new Text("AboutDialog控件")),
          FlatButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.pushNamed(context, '/tabSegment');
              },
              child: new Text("TabSegmentDemo")),
        ],
      ),
    );
  }
}
