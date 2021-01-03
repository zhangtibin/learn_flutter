import 'package:flutter/material.dart';
import 'package:learn_flutter/model/post.dart';

class PageItemBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return pageViewBuilderDemo();
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