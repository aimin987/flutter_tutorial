/*
 * File: chapter4.dart
 * -----
 * Description: 布局练习
 * -----
 * Created  By: Aim 2020-03-21 22:50:57
 * Modified By: Aim 2020-03-29 16:53:21
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter4/layout_column.dart';
import 'package:flutter_tutorial/chapter4/layout_flex.dart';
import 'package:flutter_tutorial/chapter4/layout_row.dart';

class Chapter4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第四章:布局类组件'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("线性布局-Row"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Layout_Row();
                }));
              },
            ),
            FlatButton(
              child: Text("线性布局-Column"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Layout_Column();
                }));
              },
            ),
            FlatButton(
                child: Text("弹性布局-Flex"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LayoutFlex();
                  }));
                })
          ],
        ),
      ),
    );
  }
}
