import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemo createState() => _StateManagementDemo();
}

class _StateManagementDemo extends State<StateManagementDemo> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagement"),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(label: Text("$count")),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              count += 1;
            });
            print("==== $count");
          }),
    );
  }
}

// class StateManagementDemo extends StatelessWidget {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("StateManagement"),
//         elevation: 0.0,
//       ),
//       body: Center(
//         child: Chip(label: Text("$count")),
//       ),
//       floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             count += 1;
//             print("==== $count");
//           }),
//     );
//   }
// }
