import 'package:flutter/material.dart';
import 'package:learn_flutter/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
