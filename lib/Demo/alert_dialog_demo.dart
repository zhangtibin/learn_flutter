import 'dart:math';

import 'package:flutter/material.dart';

import 'dart:async';

import 'custom_dialog/alert_dialog.dart';
import 'custom_dialog/cupertino_dialog.dart';
import 'custom_dialog/func_dialog.dart';
import 'custom_dialog/sheet_dialog.dart';

enum Action {
  OK,
  Cancel,
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future _openAlertDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false, //必须选择一个选项才能关闭对话框
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('dialog content'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context, Action.OK);
              },
            ),
          ],
        );
      },
    );
    switch (action) {
      case Action.OK:
        setState(() {
          _choice = 'OK';
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      default:
    }
  }

  void _actionSheetPop() {
    DialogFunctionUtil.bottomSheetDialog(context, ShowSheetDialog(items: ['相册', '相机'],
      title: '请选择图片来源',
      onTap: (index) {
        print('object$index');
      },
    ));
  }

  //城市选择器
  void _cityPickerPop() {
    DialogFunctionUtil.bottomSheetDialog(context, ShowCupertinoDialog(
      items: ['北京', '上海', '天津', '深圳', '武汉', '广州', '杭州'],
      onTap: (int index, String res) {
        print('object$index + $res');
      },
    ));
  }

  void _customerAlertPop() {
    DialogFunctionUtil.popCenterDialog(
      context,
      ShowAlertDialog(
        items: ['取消', '确认'],
        title: '提示',
        content: '确认要退出登录吗？',
        onTap: (index) {
          print('object$index');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is $_choice'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDialog'),
                  onPressed: _openAlertDialog,
                ),
              ],
            ),
            FlatButton(onPressed: _actionSheetPop, child: Text('ActionSheet')),
            FlatButton(onPressed: _cityPickerPop, child: Text('CityPicker')),
            FlatButton(onPressed: _customerAlertPop, child: Text('CustomerAlert')),
          ],
        ),
      ),
    );
  }
}
