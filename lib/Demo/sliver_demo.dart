import 'package:flutter/material.dart';
import 'package:learn_flutter/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('首页'),
            // pinned: true,//标题固定，默认固定
            floating: true,
            expandedHeight: 178.0, //伸展出来的高度
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '张体宾',
                style: TextStyle(
                  fontSize: 22.0,
                  letterSpacing: 3.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                'https://static.clouderwork.com/job/26/97/253e1451-ac46-4ec2-8cef-af8f13e00d0f.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(//在安全区域内显示
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
              // sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

//网格视图
class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8.0,
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        childAspectRatio: 0.75, //比例
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
