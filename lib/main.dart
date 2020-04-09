import 'package:flutter/material.dart';
import 'model/post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'Hello world!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 38.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
          elevation: 0.0,//阴影
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )
      );
  }
}