import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 10),
          Text(
            '标题：' + posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height:8),
          Text(
            '作者：' + posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
  }
}