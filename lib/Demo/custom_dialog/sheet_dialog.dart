//
//  sheet_dialog
//  learn_flutter
//
//  Created by zhangtibin on 2021/8/18.
//  Copyright © 2020 PnR Data Service Co.,Ltd. All rights reserved.
//

import 'package:flutter/material.dart';

import 'dialog_const.dart';

class ShowSheetDialog extends StatefulWidget {
  List<String> items = [];
  Function onTap;
  String title;

  ShowSheetDialog({
    @required this.items,
    this.onTap,
    this.title,
  });

  @override
  _ShowSheetDialogState createState() => _ShowSheetDialogState();
}

class _ShowSheetDialogState extends State<ShowSheetDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConst.Color_BG,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          (widget.title != null && widget.title.length > 0) ? Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Text(
              widget.title,
              style: TextStyle(color: ColorConst.Color_Font_LightGray, fontSize: 14.0),
            ),
            decoration: BoxDecoration(
              color: ColorConst.Color_Font_White,
              border: Border(
                bottom: BorderSide(
                  color: ColorConst.Color_Split_Line,
                  width: 1,
                )
              ),
            ),
          ) : Container(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: widget.items.map((title) {
              int index = widget.items.indexOf(title);
              return GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  if(widget.onTap != null){
                    widget.onTap(index);
                  }
                },
                child: _itemCreate(title),
              );
            }).toList(),
          ),
          GestureDetector(
            child: Padding(
                padding: EdgeInsets.only(
                top: 10),
              child: _itemCreate('取消'),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _itemCreate(String title) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(title, style: TextStyle(fontSize: 16, color: Colors.blue), textAlign: TextAlign.center,),
      ),
      decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: ColorConst.Color_Split_Line, width: 1))),
    );
  }

}
