//
//  cupertino_dialog
//  learn_flutter
//
//  Created by zhangtibin on 2021/8/18.
//  Copyright © 2020 PnR Data Service Co.,Ltd. All rights reserved.
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowCupertinoDialog extends StatefulWidget {
  List<String> items;
  Function onTap;

  ShowCupertinoDialog({@required this.items, this.onTap});

  @override
  _ShowCupertinoDialogState createState() => _ShowCupertinoDialogState();
}

class _ShowCupertinoDialogState extends State<ShowCupertinoDialog> {
  @override
  Widget build(BuildContext context) {
    var selectIndex;
    return Container(
      height: 280,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('确定'),
                splashColor: Colors.grey,
                highlightColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  if (selectIndex == null && widget.items.length > 0) {
                    selectIndex = 0;
                  }
                  if (widget.onTap != null) {
                    widget.onTap(selectIndex, widget.items[selectIndex]);
                  }
                },
              ),
            ],
          ),
          Expanded(
            child: CupertinoPicker(
              itemExtent: 36,
              onSelectedItemChanged: (index) {
                selectIndex = index;
              },
              children: widget.items.map((item) {
                return Text(item);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
