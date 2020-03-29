/*
 * File: layout_column.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-03-22 22:34:52
 * Modified By: Aim 2020-03-29 16:44:37
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Layout_Column extends StatelessWidget {
  const Layout_Column({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("线性布局-Column"),
      ),
      body: Container(
          color: Colors.green,
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Text("hello world"),
                        Text("I am Jack"),
                      ],
                    ),
                  ))
                ],
              ))),
    );
  }
}
