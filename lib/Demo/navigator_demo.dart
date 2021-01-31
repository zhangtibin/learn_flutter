import 'package:flutter/material.dart';
import 'package:learn_flutter/Demo/home_page.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context)=> Page(title: 'Home',),
                  //   ),
                  // );
                },
                child: Text('Home')),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Page(title: "newPage")));
                },
                child: Text('新页面')),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/state-management');
                },
                child: Text('state-management')),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/stream');
                },
                child: Text('stream')),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  Page({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
