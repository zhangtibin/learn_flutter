import 'package:flutter/material.dart';
import 'package:learn_flutter/model/post.dart';

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageViewWidget();
  }
}


class pageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false,//是否按页滚动(默认true)
      // reverse: true,//倒置
      // scrollDirection: Axis.vertical,//滚动方向：水平方向
      onPageChanged: (currentPage) =>
          debugPrint('page: $currentPage'), //当前index
      controller: PageController(
        initialPage: 1, //初始化index
        keepPage: false, //不记住用户滚动到哪个页面，默认为记住
        viewportFraction: 0.95, //当前PageController占用窗口的比例，默认全部1.0
      ),
      children: <Widget>[
        Container(
          color: Colors.yellow,
          alignment: Alignment(0, 0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 32.0, color: Colors.green),
          ),
        ),
        Container(
          color: Colors.purple[900],
          alignment: Alignment(0, 0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.brown[200],
          alignment: Alignment(0, 0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
