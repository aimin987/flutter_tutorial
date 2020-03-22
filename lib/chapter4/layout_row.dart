/*
 * File: row.dart
 * -----
 * Description: 行布局
 * -----
 * Created  By: Aim 2020-03-21 22:50:11
 * Modified By: Aim 2020-03-22 22:41:17
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout_Row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('线性布局-Row'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Hello world"), Text("I am Jack")],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Hello world"), Text("I am Jack")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[Text("Hello world"), Text("I am Jack")],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Hello world",
                  style: TextStyle(fontSize: 30.0),
                ),
                Text("I am Jack")
              ],
            )
          ],
        ));
  }
}
