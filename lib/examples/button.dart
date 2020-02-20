/*
 * File: button.dart
 * -----
 * Description: 按钮
 * -----
 * Created  By: Aim 2020-02-20 17:43:42
 * Modified By: Aim 2020-02-20 18:04:14
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  _onPressed() {}

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Column(
      children: <Widget>[
        RaisedButton(
          onPressed: _onPressed,
          child: Text('Raised'),
        ),
        FlatButton(
          child: Text("Flat"),
          onPressed: _onPressed,
        ),
        OutlineButton(
          child: Text("Outline"),
          onPressed: _onPressed,
        ),
        IconButton(icon: Icon(Icons.thumb_up), onPressed: _onPressed),
        RaisedButton.icon(
          icon: Icon(Icons.send),
          label: Text("发送"),
          onPressed: _onPressed,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text("添加"),
          onPressed: _onPressed,
        ),
        FlatButton.icon(
          icon: Icon(Icons.info),
          label: Text("详情"),
          onPressed: _onPressed,
        )
      ],
    ));
  }
}
