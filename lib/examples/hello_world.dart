/*
 * File: helloworld.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-02-17 22:10:41
 * Modified By: Aim 2020-02-29 21:56:10
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
              title: new Text(
            'Example title',
            style: Theme.of(context).primaryTextTheme.title,
          )),
          new Expanded(
              child: new Center(
            child: new Text('Hello World'),
          ))
        ],
      ),
    );
  }
}

/// 项部
class MyAppBar extends StatelessWidget {
  final Widget title;

  // 构造函数
  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: null),
          new Expanded(child: title),
          new IconButton(icon: new Icon(Icons.search), onPressed: null)
        ],
      ),
    );
  }
}
