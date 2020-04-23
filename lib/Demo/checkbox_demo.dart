import 'package:flutter/material.dart';

class ChooseBoxDemo extends StatefulWidget {
  @override
  _ChooseBoxDemoState createState() => _ChooseBoxDemoState();
}

class _ChooseBoxDemoState extends State<ChooseBoxDemo> {
  bool _checkboxItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('Check Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(
                //   value: _checkboxItemA,
                //   onChanged: (value) {
                //     setState(() {
                //       _checkboxItemA = value;
                //     });
                //   },
                //   activeColor: Colors.red,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
