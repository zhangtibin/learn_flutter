import 'package:flutter/material.dart';

import 'package:learn_flutter/model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(label: Text('Title')),
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Image')),
              ],
              rows: posts.map((posts) {
                return DataRow(
                  cells: [
                    DataCell(Text(posts.title)),
                    DataCell(Text(posts.author)),
                    DataCell(Image.network(posts.imageUrl)),
                  ],
                );
              }).toList(),
              // rows: [
              //   DataRow(
              //     cells: [
              //       DataCell(Text('hello')),
              //       DataCell(Text('world')),
              //     ],
              //   ),
              //   DataRow(
              //     cells: [
              //       DataCell(Text('abc')),
              //       DataCell(Text('test')),
              //     ],
              //   ),
              //   DataRow(
              //     cells: [
              //       DataCell(Text('hhh')),
              //       DataCell(Text('amogads')),
              //     ],
              //   ),
              // ],
            ),
          ],
        ),
      ),
    );
  }
}
