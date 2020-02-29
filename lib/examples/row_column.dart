/*
 * File: row_column.dart
 * -----
 * Description:  线性布局
 * -----
 * Created  By: Aim 2020-02-29 16:28:58
 * Modified By: Aim 2020-02-29 17:28:40
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
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Column(
                  children: <Widget>[Text('Hello world'), Text('I am Jack')],
                ),
              )
            ],
          ),
        ),
      ),

      // body: ConstrainedBox(
      //   constraints: BoxConstraints(minWidth: double.infinity),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       Text('Hi'),
      //       Text('World')
      //     ],
      //   ),
      // )
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      // children: <Widget>[
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[Text('[1,1]'), Text("[1,2]")],
      //   ),
      //   Row(
      //     mainAxisSize: MainAxisSize.min,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[Text('[2,1]'), Text('[2,2]')],
      //   ),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     textDirection: TextDirection.rtl,
      //     children: <Widget>[Text('[3,1]'), Text('[3,2]')],
      //   ),
      //    Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     verticalDirection: VerticalDirection.up,
      //     children: <Widget>[Text('[4,1]', style: TextStyle(fontSize: 30.0),), Text('[4,2]')],
      //   )
      // ],

      // children: <Widget>[
      //   Text('hi'),
      //   Text('world')
      // ],
      // ),
    );
  }
}
