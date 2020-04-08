/*
 * File: chapter6.dart
 * -----
 * Description: 第六章 可滚动组件
 * -----
 * Created  By: Aim 2020-04-07 15:47:14
 * Modified By: Aim 2020-04-08 10:29:03
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter6/scroll_infiniteListView.dart';
import 'package:flutter_tutorial/chapter6/scroll_listview.dart';
import 'package:flutter_tutorial/chapter6/scroll_singlechild.dart';

class Chapter6 extends StatelessWidget {
  const Chapter6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第六章：可滚动组件'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("6.2 SingleChildScrollView"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScrollSingleChild();
                }));
              },
            ),
            FlatButton(
              child: Text("6.3 ListView"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScrollListView();
                }));
              },
            ),
            FlatButton(
              child: Text("6.3 无限加载列表"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScrollInfiniteListView();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

