/*  Brief: 
 *  @Remark: 
 *  @param {type} 
 *  @return: 
 *  @LastEditors: zhangtibin
 *  @LastEditTime: 2020-04-17 16:44:54
 *  @Deprecated: false
 */
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            elevation: 0.0,
            // color: Theme.of(context).accentColor,
            // textColor: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        FlatButton(
          child: Text('FlatButton'),
          onPressed: null, //null表示禁止状态
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('FlatButton'),
          onPressed: () {}, //null表示禁止状态
          splashColor: Colors.grey, //渐没颜色
          textColor: Theme.of(context).accentColor,
        ),
        SizedBox(height: 50),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            elevation: 0.0,
            // color: Theme.of(context).accentColor,
            // textColor: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 30),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('RaisedButton'),
          onPressed: () {}, //null表示禁止状态
          elevation: 12.0, //与下一层的高度，用于显示投影
          splashColor: Colors.grey, //渐没颜色
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

//描边按钮
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton(
            child: Text('RaisedButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            // color: Theme.of(context).accentColor,
            // textColor: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 30),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('RaisedButton'),
          onPressed: () {}, //null表示禁止状态
          splashColor: Colors.grey, //渐没颜色
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final fixWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 180,
          height: 50,
          child: OutlineButton(
            child: Text('RaisedButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
            textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('ExpandedButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
            textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 12.0),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('ExpandedButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
            textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final outLineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('OutLineButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
            textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 12.0),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('OutLineButton'),
            onPressed: () {}, //null表示禁止状态
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
            textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                onPressed: null,
                child: Text('Button'),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
                textColor: Colors.black12,
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(
                onPressed: null,
                child: Text('Button'),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
                textColor: Colors.black12,
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // flatButtonDemo,
            // raisedButtonDemo,
            // fixWidthButtonDemo,
            // outlineButtonDemo,
            Theme(
              data: Theme.of(context).copyWith(
                buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                ),
              ),
              child: ButtonBar(
                children: <Widget>[
                  OutlineButton(
                    onPressed: null,
                    child: Text('Button'),
                    splashColor: Colors.grey,
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    textColor: Colors.black12,
                    highlightedBorderColor: Colors.grey,
                  ),
                  OutlineButton(
                    onPressed: null,
                    child: Text('Button'),
                    splashColor: Colors.grey,
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    textColor: Colors.black12,
                    highlightedBorderColor: Colors.grey,
                  ),
                  flatButtonDemo,
                  raisedButtonDemo,
                  fixWidthButtonDemo,
                  outlineButtonDemo,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
