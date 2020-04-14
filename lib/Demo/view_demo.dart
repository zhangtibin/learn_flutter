import 'package:flutter/material.dart';
import 'package:learn_flutter/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return pageViewDemo();
    // return pageViewBuilderDemo();
    // return GridViewCountDemo();
    // return GridViewExtentDemo();
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize:18, color:Colors.grey),
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(//网格视图
      maxCrossAxisExtent: 150.0,//在交叉上的最大宽度
      crossAxisSpacing: 16.0,//
      mainAxisSpacing: 16.0,//
      // scrollDirection: Axis.horizontal,//滚动方向，默认水平
      children: _buildTiles(100),
    );
  }
}

//网格视图
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize:18, color:Colors.grey),
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(//网格视图
      crossAxisCount: 3,//在交叉轴上显示的数量
      crossAxisSpacing: 16.0,//
      mainAxisSpacing: 16.0,//
      // scrollDirection: Axis.horizontal,//滚动方向，默认水平
      children: _buildTiles(100),
    );
  }
}


class pageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder (BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(
                  fontWeight:FontWeight.bold
                ),
              ),
              Text(
                posts[index].author,
              ),
            ],
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemBuilder: _pageItemBuilder,
      itemCount: posts.length,//数量
    );
  }
}

class pageViewDemo extends StatelessWidget {
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
        viewportFraction: 0.85, //当前PageController占用窗口的比例，默认全部1.0
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
