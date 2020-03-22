/*
 * File: layout_column.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-03-22 22:34:52
 * Modified By: Aim 2020-03-22 22:46:59
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("hi"),
            Text("world"),
          ],
        ));
  }
}
