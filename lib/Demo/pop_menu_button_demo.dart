import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopUpMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_currentMenuItem),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PopupMenuButton(
                  onSelected: (value) {
                    print('Select：$value');
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('Home'),
                      value: 'Home',
                    ),
                    PopupMenuItem(
                      child: Text('Discover'),
                      value: 'Discover',
                    ),
                    PopupMenuItem(
                      child: Text('Community'),
                      value: 'Community',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
