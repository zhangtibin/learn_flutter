//
//  func_dialog
//  learn_flutter
//
//  Created by zhangtibin on 2021/8/18.
//  Copyright © 2020 PnR Data Service Co.,Ltd. All rights reserved.
//

import 'package:flutter/material.dart';

class DialogFunctionUtil {
  static void popCenterDialog(BuildContext context, Widget widget) {
    showDialog(
        context: context,
        barrierDismissible: true, //可以控制点击对话框以外的区域是否隐藏对话框
        builder: (ctx) {
          return widget;
        });
  }

  static void bottomSheetDialog(BuildContext context, Widget widget) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (ctx) {
          return widget;
        });
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static Future push(BuildContext context, Widget widget) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => widget));
  }
}
