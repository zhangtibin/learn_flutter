import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupItemA = 0;
  void _handleRadioValueChanged(int a) {
    setState(() {
      _radioGroupItemA = a;
    });
  }

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
            Text('RadioGroupValue$_radioGroupItemA'),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupItemA,
              onChanged: _handleRadioValueChanged,
              title: Text('Option A'),
              subtitle: Text('Decrition'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupItemA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupItemA,
              onChanged: _handleRadioValueChanged,
              title: Text('Option B'),
              subtitle: Text('Decrition'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupItemA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Radio(//单选按钮
                //   value: 0,
                //   groupValue: _radioGroupItemA,
                //   onChanged: _handleRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupItemA,
                //   onChanged: _handleRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
