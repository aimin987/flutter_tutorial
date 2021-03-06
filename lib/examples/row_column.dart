/*
 * File: row_column.dart
 * -----
 * Description:  线性布局
 * -----
 * Created  By: Aim 2020-02-29 16:28:58
 * Modified By: Aim 2020-03-21 22:41:32
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('线性布局'),
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
