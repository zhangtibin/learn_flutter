import 'package:flutter/material.dart';

class AbountPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("关于"),
        elevation: 0.0,
      ),
      body: Container(
        child:Text("内容")
      ),
    );
  }
}