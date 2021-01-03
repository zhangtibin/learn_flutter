import 'package:flutter/material.dart';


class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridCountDemo();
  }
}


//网格视图
class GridCountDemo extends StatelessWidget {
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
