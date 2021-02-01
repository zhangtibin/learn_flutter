import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome> {
  AnimationController animationDemoController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // animationDemoController = AnimationController
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
