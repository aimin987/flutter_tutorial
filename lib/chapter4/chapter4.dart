/*
 * File: chapter4.dart
 * -----
 * Description: 布局练习
 * -----
 * Created  By: Aim 2020-03-21 22:50:57
 * Modified By: Aim 2020-04-05 22:13:44
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter4/layout_align.dart';
import 'package:flutter_tutorial/chapter4/layout_column.dart';
import 'package:flutter_tutorial/chapter4/layout_flex.dart';
import 'package:flutter_tutorial/chapter4/layout_flow.dart';
import 'package:flutter_tutorial/chapter4/layout_row.dart';
import 'package:flutter_tutorial/chapter4/layout_stack_positioned.dart';
import 'package:flutter_tutorial/chapter4/layout_wrap.dart';

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
                }),
            FlatButton(
                child: Text("流式布局-Wrap"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LayoutWrap();
                  }));
                }),
            FlatButton(
                child: Text("流式布局-Flow"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LayoutFlow();
                  }));
                }),
            FlatButton(
                child: Text("层叠布局-Stack,Positioned"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LayoutStackPositioned();
                  }));
                }),
            FlatButton(
                child: Text("对齐与相对定位-Align"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LayoutAligin();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
