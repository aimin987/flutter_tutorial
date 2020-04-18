/*
 * File: chapter7.dart
 * -----
 * Description: 第7章 功能型组件
 * -----
 * Created  By: Aim 2020-04-08 17:44:24
 * Modified By: Aim 2020-04-18 17:26:10
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter7/func_inherited.dart';
import 'package:flutter_tutorial/chapter7/func_provider.dart';
import 'package:flutter_tutorial/chapter7/func_theme.dart';
import 'package:flutter_tutorial/chapter7/func_willpopscope.dart';
import 'package:flutter_tutorial/chapter7/provider/Counter.dart';
import 'package:provider/provider.dart';

class Chapter7 extends StatelessWidget {
  const Chapter7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第七章：功能型组件'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("7.1 导航返回拦截"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FuncWillPopScop();
                }));
              },
            ),
            FlatButton(
              child: Text("7.2 数据共享（InheritedWidget）"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FuncInherited();
                }));
              },
            ),
            FlatButton(
              child: Text("7.3 跨组件状态共享（Provider）"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MultiProvider(providers: [
                    ChangeNotifierProvider(
                      create: (_) => Counter(),
                    )
                  ], child: FuncProvider());

                  // FuncProvider();
                }));
              },
            ),
            FlatButton(
              child: Text("7.4 颜色和主题"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FuncTheme();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
