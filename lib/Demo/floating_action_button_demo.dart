import 'package:flutter/material.dart';

class FloatActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    child: Icon(Icons.add),
    backgroundColor: Colors.brown,
    elevation: 0.0, //与下层之前的高度,0,0标识阴影不见了
    shape: BeveledRectangleBorder(
      //形状，正方形
      borderRadius: BorderRadius.circular(30),
    ),
    onPressed: () {
      debugPrint('=======');
    },
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('Add', style: TextStyle(color: Colors.white)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatActionButton'),
        elevation: 0,
      ),
      // floatingActionButton: _floatingActionButton,
      floatingActionButton: _floatingActionButtonExtended,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
