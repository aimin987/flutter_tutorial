/*
 * File: chapter4.dart
 * -----
 * Description: 布局练习
 * -----
 * Created  By: Aim 2020-03-21 22:50:57
 * Modified By: Aim 2020-03-21 23:23:21
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter4/layout_row.dart';

class Chapter4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第四章:布局类组件'),
      ),
      body: Column(
        children: <Widget>[
          OutlineButton(
            child: Text("Row"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Layout_Row();
              }));
            },
          )
        ],
      ),
    );
  }
}
