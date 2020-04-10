import 'package:flutter/material.dart';
class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onTapHandler,
            //超过四个会显示错误，用下面方法解决
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.cyan,
            items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('ExPlore')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_subway),
              title: Text('Subway')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account')
            )
          ],
          );
  }
}